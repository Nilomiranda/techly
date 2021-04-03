document.addEventListener('DOMContentLoaded', () => {
    (document.querySelectorAll('.modal .modal-close') || []).forEach(($modalClose) => {
        const $modal = $modalClose.parentNode;

        $modalClose.addEventListener('click', () => {
            $modal.classList.remove('is-active');
        });
    });
});

document.addEventListener('DOMContentLoaded', () => {
    (document.querySelectorAll('.modal-btn') || []).forEach(($modalBtn) => {
        $modalBtn.addEventListener('click', () => {
            console.log($modalBtn.dataset.modal)

            const $targetModal = document.querySelector(`#${$modalBtn.dataset.modal}`)

            if ($targetModal) {
                $targetModal.classList.add('is-active')
            }
        })
    });
});