export const displayAlertOnButtonClick = () => {
 
    const buttonClick = document.querySelector('#checkin');
    buttonClick.addEventListener('click', (event) => {
      alert('Great! 🎉 a member of staff will be with your shortly.');
    });

    const buttonFinished = document.querySelector('#finished');
    buttonFinished.addEventListener('click', (event) => {
      alert('Great! 🎉 click link below to review your date.');
    });
  };
  
  
