CKEDITOR.editorConfig = (config) ->
  config.language = 'en'
  config.toolbar_Pure = [
#    { name: 'document',    items: [ 'Save','Preview' ] },
    { name: 'basicstyles', items: [ 'Bold','Italic' ] },
#    { name: 'editing',     items: [ 'Find','Replace','-','SelectAll','-','SpellChecker', 'Scayt' ] },
#    { name: 'tools',       items: [ 'Maximize', 'ShowBlocks','-','About' ] }
    { name: 'paragraph',   items: [ 'NumberedList','BulletedList','Outdent','Indent','Link','Unlink' ] },

    { name: 'clipboard',   items: [ 'Undo','Redo' ] },
#    { name: 'links',       items: [ 'Link','Unlink','Anchor' ] },
#    '/',
#    { name: 'styles',      items: [ 'Styles','Format','Font','FontSize' ] },
#    { name: 'colors',      items: [ 'TextColor','BGColor' ] },
#    { name: 'insert',      items: [ 'Image','Flash','Table','HorizontalRule','Smiley','SpecialChar','PageBreak' ] },
  ]
  config.toolbar = 'Pure'
  true

CKEDITOR.on 'dialogDefinition', (ev) ->
  dialogName = ev.data.name
  dialogDefinition = ev.data.definition
  if dialogName == 'link'
    targetTab = dialogDefinition.getContents('target')
    # Set the default value for the URL field.
    targetField = targetTab.get('linkTargetType')
    targetName = targetTab.get('linkTargetName')
    targetField['default'] = '_blank'
    targetName['default'] = '_blank'
  return