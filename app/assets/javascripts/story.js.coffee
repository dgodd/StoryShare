# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$ ->
  $('#story_body').wysiwyg({
    controls: {
      strikeThrough: { visible: false },
      createLink: { visible: false },
      insertImage: { visible: false },
      code: { visible: false },
      h1: { visible: false },
      h2: { visible: false },
      h3: { visible: false }
    }
  })

$ ->
  $('#comment_body').wysiwyg({
    controls: {
      strikeThrough: { visible: false },
      createLink: { visible: false },
      insertImage: { visible: false },
      insertTable: { visible: false },
      code: { visible: false },
      h1: { visible: false },
      h2: { visible: false },
      h3: { visible: false },
      justifyLeft: { visible: false },
      justifyCenter: { visible: false },
      justifyRight: { visible: false },
      justifyFull: { visible: false },
      indent: { visible: false },
      outdent: { visible: false },
      subscript: { visible: false },
      superscript: { visible: false }
    }
  })
