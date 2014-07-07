module.exports = (grunt) ->
  grunt.initConfig(
    pkg: grunt.file.readJSON('package.json')
    project:
      app: 'webapp'
      asset_path: '<%= project.app %>/assets'
      css_path:   '<%= project.asset_path %>/css'
      js_path:    '<%= project.asset_path %>/js'
    less:
      app:
        files:
          '<%= project.css_path %>/thinkup.css': '<%= project.css_path %>/src/thinkup.less'
    coffee:
      app:
        files: [
          '<%= project.js_path %>/thinkup.js':'<%= project.js_path %>/src/thinkup.coffee'
        ]
    premailer:
      simple:
        files: 'webapp/plugins/insightsgenerator/view/_email.insights_html.tpl': ['extras/dev/precompiledtemplates/email/_email.insights_html.tpl']
    watch:
      email:
        files: 'extras/dev/precompiledtemplates/email/*'
        tasks: ['html_email']
      css:
        files: '<%= project.css_path %>/src/*'
        tasks: ['less']
      js:
        files: '<%= project.js_path %>/src/*'
        tasks: ['coffee']
  )
  grunt.loadNpmTasks('grunt-contrib-watch')
  grunt.loadNpmTasks('grunt-contrib-less')
  grunt.loadNpmTasks('grunt-contrib-coffee')
  grunt.loadNpmTasks('grunt-premailer')

  grunt.registerTask('fixstyles', 'This fixes the stuff premailer breaks', ->
    html = grunt.file.read 'webapp/plugins/insightsgenerator/view/_email.insights_html.tpl'
    html = html.replace(/123456/g,'{$color}').replace(/654321/g,'{$color_dark}').replace(/ABCDEF/g,'{$color_light}')
    html = html.replace('<style type="text/css">','<style type="text/css">{literal}')
    html = html.replace('</style>','{/literal}</style>')
    grunt.file.write 'webapp/plugins/insightsgenerator/view/_email.insights_html.tpl', html
  )
  grunt.registerTask('default', ['premailer', 'fixstyles'])
  grunt.registerTask('html_email', ['premailer', 'fixstyles'])