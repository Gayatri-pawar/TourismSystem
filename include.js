function includeHTML() {
    var elements = document.querySelectorAll('[data-include]');
    elements.forEach(function(element) {
        var file = element.getAttribute('data-include');
        fetch(file)
            .then(response => response.text())
            .then(data => {
                element.innerHTML = data;
            })
            .catch(error => console.error('Error loading file:', error));
    });
}

document.addEventListener('DOMContentLoaded', includeHTML);
