document.addEventListener('DOMContentLoaded', () => {
    (document.querySelectorAll('.modal .modal-close') || []).forEach(($modalClose) => {
        const $modal = $modalClose.parentNode;

        $modalClose.addEventListener('click', () => {
            $modal.parentNode.removeChild($modal);
        });
    });
});