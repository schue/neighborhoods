module.exports = (grunt) ->
    grunt.initConfig
        bower:
            target:
                rjsConfig: 'client/app/main.js'
        pkg: grunt.file.readJSON('package.json')
        coffee:
            client:
                options:
                    sourceMap: true
                    sourceMapDir: 'build/coffeejs/client'
                expand: true
                cwd: 'client'
                src: '**/*.coffee'
                dest: 'build/coffeejs/client'
                ext: '.js'
            server:
                options:
                    sourceMap: true
                    sourceMapDir: 'build/coffeejs/server'
                expand: true
                cwd: 'server'
                src: '**/*.coffee'
                dest: 'build/coffeejs/server'
                ext: '.js'
        requirejs:
            compile:
                options:
                    baseUrl: 'build/coffeejs'
                    mainConfigFile: 'rconfig.js'
                    dir: 'build/rmodules'
                    modules: []
        copy:
            product:
                expand: true
                cwd: 'build/coffeejs'
                src: ['**']
                dest: 'dist'
            default:
                expand: true
                cwd: 'client'
                src: ['**/*']
                dest: 'dist/client'
            execute:
                expand: true
                cwd: 'client/lib'
                src: ['**/*']
                dest: 'dist/client/lib'
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
    grunt.loadNpmTasks 'grunt-bower-requirejs'
    grunt.registerTask 'default', ['bower', 'coffee', 'requirejs', 'copy']
    grunt.registerTask 'server', ['default', 'execute']
