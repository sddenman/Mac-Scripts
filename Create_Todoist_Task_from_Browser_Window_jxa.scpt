JsOsaDAS1.001.00bplist00�Vscript_4const frontmost_app_name = Application('System Events').applicationProcesses.where({ frontmost: true }).name()[0]
const frontmost_app = Application(frontmost_app_name)
frontmost_app.includeStandardAdditions = true;

var theNote = ''
var theTitle = ''
var theDueDate = 'today'

if (frontmost_app_name == 'Safari' || frontmost_app_name == 'Webkit') {
	theTitle = frontmost_app.documents[0].name()
	theNote = frontmost_app.documents[0].url()
} else if (frontmost_app_name == 'Google Chrome' || frontmost_app_name == 'Google Chrome Canary' || frontmost_app_name == 'Chromium') {
	theTitle = frontmost_app.windows[0].activeTab.name()
	theNote = frontmost_app.windows[0].activeTab.url()
} else {
	theTitle = frontmost_app.windows[0].name()
}
if (theNote != '') {theNote = 'Email Link (Verse): ' + theNote}

Progress.totalUnitCount = 1
Progress.completedUnitCount = 0
Progress.description = "Creating Item..."

var itemID = frontmost_app.doShellScript(
	'/usr/local/bin/python3 /Users/steve/Documents/Tools/Mac/Scripts/Todoist/sddtodoist_shell.py --pipeid additem ' + 
	'\"' + theTitle + '\" ' + 
	'-d \"' + theDueDate + '\" ' + 
	'-c \"' + theNote + '\"'
	)

Progress.completedUnitCount = 1

var dialog_return = frontmost_app.displayDialog(
	"Item created. Press Open to view new Item in web browser or OK to close...", 
	{
		withTitle: "Create Todoist Task from Browser Window",
		buttons: ["Open", "OK"],
		defaultButton: "Open",
		cancelButton: "OK"
	}
)

if (dialog_return['buttonReturned'] == 'Open') {frontmost_app.doShellScript('open https\:\/\/todoist.com\/showTask\\\?id\=' + itemID)}
                              Jjscr  ��ޭ