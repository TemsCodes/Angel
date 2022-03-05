export const displayAlertOnButtonClick = () => {
 
    const buttonClick = document.querySelector('#checkin');
    buttonClick.addEventListener('click', (event) => {
      alert('Great! 🎉 a text has been sent to a member of staff who will be with you shortly.');
    });

    const buttonFinished = document.querySelector('#finished');
    buttonFinished.addEventListener('click', (event) => {
      alert('Great! 🎉 click link below to review your date.');
    });
  };


  
  
