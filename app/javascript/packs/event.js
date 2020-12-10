export function getinfos() {
  const getinfo = document.getElementById("getinfo");
  const sendtag = () => {
    const name = getinfo.dataset.name;
    const cat = getinfo.dataset.cat;
    gtag('event', 'get_infos', {
      'event_category' : cat,
      'event_label' : name
    });
  };

  if (getinfo) { getinfo.addEventListener("click", sendtag) };
}