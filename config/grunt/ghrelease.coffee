module.exports = (grunt) ->
  grunt.config('release-it',
    options:
      pkgfiles: ['package.json', 'bower.json']
      buildCommand: 'grunt release'
      private: true
      publish: false
  )

  grunt.config('github-release',
    options:
      repository: 'casetext/quill'
      files:
        '.build': ['quill.tar.gz']
      auth: process.env.GITHUB_TOKEN

  )