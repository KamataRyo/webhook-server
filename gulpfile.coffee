gulp    = require 'gulp'
plumber = require 'gulp-plumber'
coffee  = require 'gulp-coffee'

gulp.task 'coffee', ->
    gulp.src './index.coffee'
        .pipe plumber()
        .pipe coffee()
        .pipe gulp.dest './'

gulp.task 'watch', ['coffee'], ->
    gulp.watch './index.coffee', ['coffee']
