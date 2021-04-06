document.addEventListener('DOMContentLoaded', () => {
  (document.querySelectorAll('.notification .delete') || []).forEach(($delete) => {
    const $notification = $delete.parentNode;

    setTimeout(() => {
      $notification.classList.add('animate__fadeOut')
      setTimeout(() => {
        $notification.parentNode.removeChild($notification);
      }, 500)
    }, 3000)

    $delete.addEventListener('click', () => {
      $notification.classList.add('animate__fadeOut')
      setTimeout(() => {
        $notification.parentNode.removeChild($notification);
      }, 500)
    });
  });
});