window.dataLayer = window.dataLayer || [];
window.gtag = function() { return dataLayer.push(arguments); }.bind(this);
window.gtag('js', new Date());

document.addEventListener('turbolinks:load', event => {
  return window.gtag('config', '<%= GoogleAnalytics::TRACKING_ID %>', {
    anonymize_ip: true,
    page_location: event.data.url
  });
});