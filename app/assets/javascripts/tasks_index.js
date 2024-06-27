// tasks_index.js

document.addEventListener('turbolinks:load', function () {
  // Only run this script on the tasks index page
  if (document.body.classList.contains('tasks-index')) {
    var notice = document.getElementById('notice');
    var alert = document.getElementById('alert');

    if (notice) {
      setTimeout(function () {
        notice.style.display = 'none';
      }, 3000); // 3 seconds (3000 milliseconds)
    }

    if (alert) {
      setTimeout(function () {
        alert.style.display = 'none';
      }, 3000); // 3 seconds (3000 milliseconds)
    }
  }
});
