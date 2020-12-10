window.dataLayer = window.dataLayer || [];
window.gtag = function() { return dataLayer.push(arguments); }.bind(this);
window.gtag('js', new Date());

document.addEventListener('turbolinks:load', event => {
  return window.gtag('config', '<%= GoogleAnalytics::TRACKING_ID %>', {
    anonymize_ip: true,
    page_location: event.data.url
  });
});

document.addEventListener('turbolinks:load', () => {
  const getinfo = document.getElementById("getinfo");
  const sendtag = () => {
    const name = getinfo.dataset.name;
    const cat = getinfo.dataset.cat;
    console.log(cat + name);
    return window.gtag('event', 'get_infos', {
      'event_category' : cat,
      'event_label' : name
    });
  };

  if (getinfo) { getinfo.addEventListener("click", sendtag) };
});