/**
 * 
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <https://www.gnu.org/licenses/>.
 *
 * @summary Create Todoist tasks from selected email messages in MacOS Mail.app.
 * @author Stephen D. Denman <sddenman@gmail.com>
 * @version 2.0.0
 * @copyright (C) 2017 Stephen D. Denman
 */

 // Set the following contants to control display of debug messages as the script executes
 /** @constant @type boolean */
const debugMode = true;
/** @constant @type int */
const displayDebugMsgGiveUpAfter = 3;
/** @constant @type string */
const displayDebugMsgTitle = 'Create Todoist Task from selected Mail message jxa: DEBUG Message';

// The email address of the Todoist project to which new tasks should be emailed
const theTodoistAddress = {address:'add.task.10875475.191537181.625a42dd17509002@todoist.net', name:'Todoist Inbox'};

// Get the Mail app object and enable Applescript Standard Additions for displayDialog, etc.
const mailApp = Application('com.apple.Mail');
mailApp.includeStandardAdditions = true;

function main() {
	displayDebugMsg('Getting the accounts of the selected messages...');
	var theSelectedMessages = mailApp.selection();
	var theAccounts = [];
	var theAccountNames = [];
	for (var i=0; i<theSelectedMessages.length; i++) {
		var theSelectedMessage = theSelectedMessages[i];
		displayDebugMsg('Processing selected message with id=' + theSelectedMessage.id() + ', subject=' + theSelectedMessage.subject() + '...');
		var theAccount = theSelectedMessage.mailbox.account();
		var theAccountName;
		if (theAccount == null) {theAccountName = 'On My Mac'} else {theAccountName = theAccount.name()}
		displayDebugMsg('Selected message is stored in the ' + theAccountName + ' email account.');
		if (!theAccountNames.includes(theAccountName)) {
			theAccounts.push(theAccount);
			theAccountNames.push(theAccountName);
		}
	}
	displayDebugMsg("Found these account names: " + theAccountNames.toString());

	if (theAccounts.length > 1) {
		// Can't handle messages from multiple email accounts because the folders for each account will be different
		displayDebugMsg("ERROR: Messages from " + theAccounts.length + " email accounts selected. Please select only messages from a single account.");
	}
	else {
		// Foward each selected message to Todoist
		var theAccount = theAccounts[0];
		var theAccountName = theAccountNames[0];
		for (var i=0; i<theSelectedMessages.length; i++) {
			var theSelectedMessage = theSelectedMessages[i];
			// Create the outgoing message to be forwarded to Todoist and make it visible to the user
			var theFwdMessage = theSelectedMessage.forward()
			theFwdMessage.visible = true;
			// Set the Todoist InBox destination address
			theFwdMessage.toRecipients.push(mailApp.Recipient(theTodoistAddress));
			// Set the message subject - this will become the title of the new action in Todist
			var theSubject = theSelectedMessage.subject() + ' \/\/From: ' + theSelectedMessage.sender() + ' \/\/Received: ' + theSelectedMessage.dateReceived().toString();
			theFwdMessage.subject = theSubject.toString();
			// Remove the email signature
				/* The following code block is a workaround for a bug in MacOS Sierra and High
				Sierra in which the outgoing message Signature field does not respond to setting
				its value directly.
				*/
			var appSystemEvents = Application("System Events");
			var messageSignaturePopUpButton =  appSystemEvents.processes["Mail"].windows[0].popUpButtons.byName('Signature:');
			messageSignaturePopUpButton.click();
			delay(0.1);
			appSystemEvents.keystroke('n');
			delay(0.1);
			appSystemEvents.keyCode(36);
			// Add a link to the original email message to the body of the forwarded message
			var theMessageLink = 'message:\/\/<' + theSelectedMessage.messageId() + '>  ';
				// !!!Insert code here to modify message body to add theMessageLink!!!
			// Send the message
			theFwdMessage.send();
			mailApp.displayDialog('*** Forwarded selected message to Todoist ***' + '\nSubject:' + theSubject);
		}
		displayDebugMsg('Getting the mailboxes of the selected messages...');
		var theMailboxes = [];
		if (theAccount === []) {theMailboxes = mailApp.mailboxes()} else {theMailboxes = theAccount.mailboxes()}
		displayDebugMsg("Got the mailboxes of the account.");
		var theMailboxNames = [];
		for (var i=0; i<theMailboxes.length; i++) {
			displayDebugMsg("Found mailbox named: " + theMailboxes[i].name());
			if (!theMailboxNames.includes(theMailboxes[i].name())) {theMailboxNames.push(theMailboxes[i].name())}
		}
		if (theMailboxNames.length > 0) {
			var theSelectedMailboxName = mailApp.chooseFromList(theMailboxNames, {withTitle:"File messages", withPrompt:"Select mailbox into which the selected messages will be moved: ", multipleSelectionsAllowed:false, emptySelectionAllowed:false, okButtonName:"Move to selected folder", cancelButtonName:"Leave in current folder"});
			displayDebugMsg("Target mailbox " + theSelectedMailboxName + " selected.");
			if (theSelectedMailboxName !== false) {
				for (var i=0; i<theSelectedMessages.length; i++) {
					var theSelectedMessage = theSelectedMessages[i];
					displayDebugMsg("Moving theSelectedMessage to the " + theSelectedMailboxName + " mailbx...");
					theSelectedMessage.mailbox = theAccount.mailboxes.byName(theSelectedMailboxName);
				}
			}
		}
		else {
			displayDebugMsg("The " + theAccountName + " email account has no mailboxes. Selected message(s) will remain in current folder(s).");
		}
		exit(0);
	}
}
/**
 * @function displayDebugMsg(msg)
 * @description Display a message during debugging session for this script.
 * @param {string} msg - The message text to display.
 * @returns none
 */
function displayDebugMsg(msg) {
	if (debugMode) {mailApp.displayDialog(msg, {givingUpAfter:displayDebugMsgGiveUpAfter, withTitle:displayDebugMsgTitle})}
}

main();
