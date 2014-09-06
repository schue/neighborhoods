module.exports = (grunt) ->
    grunt.initConfig
        pkg: grunt.file.readJSON('package.json')
        coffee:
            product:
                sourceMap: true
                expand: true
                cwd: 'src'
                src: '**/*.coffee'
                dest: 'build/coffeejs'
                ext: '.js'
        requirejs:
            compile:
                options:
                    baseUrl: 'build/coffeejs'
                    mainConfigFile: 'build/coffeejs/rconfig.js'
                    dir: 'build/rmodules'
                    modules: []
        copy:
            product:
                expand: true
                cwd: 'build/rmodules'
                src: ['**']
                dest: 'dist'
        execute:
            target:
                options:
                    cwd: 'dist'
                    args: ['devserver']
                src: ['dist/server/main.js']

    grunt.loadNpmTasks 'grunt-execute'
    grunt.loadNpmTasks 'grunt-contrib-copy'
    grunt.loadNpmTasks 'grunt-contrib-coffee'
    grunt.loadNpmTasks 'grunt-contrib-requirejs'
    grunt.registerTask 'default', ['coffee', 'requirejs', 'copy']
    grunt.registerTask 'server', ['default', 'execute']
