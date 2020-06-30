const navbar = () => {
  const home = document.querySelector('.home-page');
  const tickets = document.querySelector('.tickets-page');
  const contribute = document.querySelector('.funds');
  const finances = document.getElementById('finances');
  const admin = document.getElementById('sign-in');

  const navhome = document.getElementById('accueil');
  const navTickets = document.getElementById('tickets');
  const navContr = document.getElementById('contribution');
  const navFin = document.getElementById('nav-finances');
  const navAdmin = document.getElementById('admin');

  if (home) {
    navhome.classList.add('active');
  } else if (tickets) {
    navTickets.classList.add('active');
  } else if (contribute) {
    navContr.classList.add('active');
  } else if (finances) {
    navFin.classList.add('active');
  } else if (admin) {
    navAdmin.classList.add('active');
  }

}

export { navbar }