const registerButton = document.getElementById("register");
const loginButton = document.getElementById("login");
const container = document.getElementById("container");

registerButton.addEventListener("click", () => {
  container.classList.add("right-panel-active");
});

loginButton.addEventListener("click", () => {
  container.classList.remove("right-panel-active");
});


const nome = document.getElementById("nome");
const email = document.getElementById("email");
const dataNascimento = document.getElementById("datanascimento");
const senha = document.getElementById("senha");

const formatarData = (data) => {
  const partes = data.split("-");
  const dia = partes[2];
  const mes = partes[1];
  const ano = partes[0];
  return `${dia}/${mes}/${ano}`;
};

const cadastrarUsuario = async () => {
  const url = "http://localhost:8080/cadastro";
  
  const dataFormatada = formatarData(dataNascimento.value);
  
  const model = {
    "userName": nome.value,
    "lastName": null,
    "email": email.value,
    "dateOfBirth": dataFormatada,
    "password": senha.value
  };
  
  try {
    const response = await fetch(url, {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json'
      },
      body: JSON.stringify(model)
    });
    
    if (response.ok) {
      const data = await response.json();
      // Redirecionar para a página home após o login bem-sucedido
      window.location.href ="../Hometela/index.html";
      console.log("Requisição feita com sucesso.", data);
    } else {
      console.log("Falha ao enviar", response.statusText);
    }
  } catch (error) {
    console.log("Falha ao enviar", error);
  }
};

const registerForm = document.getElementById("register-form");
registerForm.addEventListener("submit", (e) => {
  e.preventDefault();
  cadastrarUsuario();
});




document.getElementById("register-form").addEventListener("submit", function(event) {
  var nome = document.getElementById("nome").value;
  var email = document.getElementById("email").value;
  var dataNascimento = document.getElementById("datanascimento").value;
  var senha = document.getElementById("senha").value;

  var nomeErrorMessage = document.getElementById("nome-error-message");
  var emailErrorMessage = document.getElementById("email-error-message");
  var dataNascimentoErrorMessage = document.getElementById("data-nascimento-error-message");

  if (!nome) {
    nomeErrorMessage.textContent = "Por favor, preencha o campo Nome.";
    event.preventDefault();
  } else {
    nomeErrorMessage.textContent = "";
  }

  if (!email) {
    emailErrorMessage.textContent = "Por favor, preencha o campo Email.";
    event.preventDefault();
  } else {
    emailErrorMessage.textContent = "";
  }

  if (!dataNascimento) {
    dataNascimentoErrorMessage.textContent = "Por favor, preencha o campo Data de Nascimento.";
    event.preventDefault();
  } else {
    dataNascimentoErrorMessage.textContent = "";
  }
});

document.getElementById("login-form").addEventListener("submit", function(event) {
  var loginEmail = document.getElementById("login-email").value;
  var loginSenha = document.getElementById("login-senha").value;

  var loginEmailErrorMessage = document.getElementById("login-email-error-message");
  var loginSenhaErrorMessage = document.getElementById("login-senha-error-message");

  if (!loginEmail) {
    loginEmailErrorMessage.textContent = "Por favor, preencha o campo Email.";
    event.preventDefault();
  } else {
    loginEmailErrorMessage.textContent = "";
  }

  if (!loginSenha) {
    loginSenhaErrorMessage.textContent = "Por favor, preencha o campo Senha.";
    event.preventDefault();
  } else {
    loginSenhaErrorMessage.textContent = "";
  }
});


// const passwordInput = document.querySelector(".form-container.register-container input[type='password']");
// const requirementList = document.querySelectorAll(".requeriment-list li");

// const requirements = [
//   { regex: /.{8,}/, index: 0 },
//   { regex: /.*[0-9].*/, index: 1 },
//   { regex: /.*[a-z].*/, index: 2 },
//   { regex: /.*[^A-Za-z0-9].*/, index: 3 },
//   { regex: /.*[A-Z].*/, index: 4 }
// ];

// passwordInput.addEventListener("input", () => {
//   const passwordValue = passwordInput.value;
  
//   requirements.forEach((item) => {
//     const isValid = item.regex.test(passwordValue);
//     const requirementItem = requirementList[item.index];

//     console.log(requirementItem); // Verifica o valor de requirementItem

// if (isValid) {
//   requirementItem.firstElementChild.className = "fa-solid fa-check";
//   requirementItem.classList.add("valid");
// } else {
//   requirementItem.firstElementChild.className = "fa-solid fa-circle";
//   requirementItem.classList.remove("valid");
// }
//   });
// });

