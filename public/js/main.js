document.getElementById('checkbox').addEventListener('change', function() {
    const navItems = document.querySelectorAll('.container-header__nav__item');
    navItems.forEach(item => {
        if (this.checked) {
            item.classList.remove('hidden');
        } else {
            item.classList.add('hidden');
        }
    });
});