(function(){CKEDITOR.editorConfig=function(e){return e.language="en",e.toolbar_Pure=[{name:"basicstyles",items:["Bold","Italic"]},{name:"paragraph",items:["NumberedList","BulletedList","Outdent","Indent","Link","Unlink"]},{name:"clipboard",items:["Undo","Redo"]}],e.toolbar="Pure",!0},CKEDITOR.on("dialogDefinition",function(e){var t,n,a,i,l;n=e.data.name,t=e.data.definition,"link"===n&&(l=t.getContents("target"),a=l.get("linkTargetType"),i=l.get("linkTargetName"),a["default"]="_blank",i["default"]="_blank")})}).call(this);