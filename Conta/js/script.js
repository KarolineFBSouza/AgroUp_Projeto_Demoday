const searchBox = document.querySelector(".search-box");
const searchBtn = document.querySelector(".search-btn");
const cancelBtn = document.querySelector(".cancel-btn");
const searchInput = document.querySelector("input");
const searchData = document.querySelector(".search-data");

cancelBtn.style.display = "none"; // Ocultar o botão de cancelar inicialmente

searchBtn.onclick = () => {
  searchBox.classList.add("active");
  searchBtn.classList.add("active");
  searchInput.classList.add("active");
  searchInput.focus();

  if (searchInput.value !== "") {
    var values = searchInput.value;
    searchData.classList.remove("active");
    searchData.innerHTML = "You just typed " + "<span style='font-weight: 500;'>" + values + "</span>";
  } else {
    searchData.textContent = "";
  }

  cancelBtn.style.display = "block"; // Exibir o botão de cancelar
  cancelBtn.style.right = "0";
}

cancelBtn.onclick = () => {
  searchBox.classList.remove("active");
  searchBtn.classList.remove("active");
  searchInput.classList.remove("active");
  searchData.classList.remove("active");
  searchInput.value = "";
  cancelBtn.style.display = "none"; // Ocultar o botão de cancelar
  cancelBtn.style.right = "-50px";
}

window.addEventListener('mouseover', initLandbot, { once: true });
window.addEventListener('touchstart', initLandbot, { once: true });
var myLandbot;
function initLandbot() {
  if (!myLandbot) {
    var s = document.createElement('script');s.type = 'text/javascript';s.async = true;
    s.addEventListener('load', function() {
      var myLandbot = new Landbot.Livechat({
        configUrl: 'https://storage.googleapis.com/landbot.online/v3/H-1649306-7UOBLF9855BHV0TA/index.json',
      });
    });
    s.src = 'https://cdn.landbot.io/landbot-3/landbot-3.0.0.js';
    var x = document.getElementsByTagName('script')[0];
    x.parentNode.insertBefore(s, x);
  }
}