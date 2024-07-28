const footerContainer = document.getElementById('footer-container');

fetch('footer.html')
  .then(response => response.text())
  .then(data => {
    footerContainer.innerHTML = data;
  })
  .catch(error => {
    console.error('Error fetching footer content:', error);

  });
