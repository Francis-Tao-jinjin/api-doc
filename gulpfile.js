var gulp = require('gulp'),
    apidoc = require('gulp-apidoc'),
    del = require('del');

gulp.task('apidoc', function(done) {
  apidoc({
    src: "./",
    dest: "doc/api/",
    template: "node_modules/apidoc/template/",
    debug: false,
    includeFilters: [ ".*\\.ls$" ]
  }, done);
});

gulp.task('default', ['clean', 'watch'], function() {
  gulp.start('apidoc');
});

gulp.task('clean', function() {
  return del('doc/');
});

gulp.task('watch', function() {
  gulp.watch('./api/*.ls', ['apidoc']);
});
