export function analytics() {
  window.dataLayer = window.dataLayer || [];
  window.gtag = () => dataLayer.push(arguments);
  window.gtag('js', new Date());

  console.log("called")

  document.addEventListener('turbolinks:load', (event) => {
    console.log("called from TL");
    return this.gtag('config', '<%= GoogleAnalytics::TRACKING_ID %>', {
      anonymize_ip: true,
      page_location: event.data.url
    },
    console.log(event.data.url)
    );
  });
};