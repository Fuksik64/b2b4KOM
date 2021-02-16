async function getProducers() {
  const data = await fetch("https://b2b.4kom.pl/pl/producers.php");

  return data;
}
getProducers().then((data) => {
  console.log(data);
  console.log(data.body.getReader());
});
