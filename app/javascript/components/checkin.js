export const displayAlertOnButtonClick = () => {
 console.log("hello")
    const buttonClick = document.querySelector('#checkin');
    buttonClick.addEventListener('click', (event) => {
      alert('Great! 🎉 a text has been sent to a member of staff who will be with you shortly.');
    });

    const buttonCall = document.querySelector('#callme');
    buttonCall.addEventListener('click', (event) => {
      alert('Calling you now');
    });

    const buttonFinished = document.querySelector('#finish');
    buttonFinished.addEventListener('click', (event) => {
      alert('Amazing! 🎉 we hope you enjoyed your date.');
    });
  };


  
  
