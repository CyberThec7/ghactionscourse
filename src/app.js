const greet = (name) => `Hello ${name}`;

module.exports = greet;

if (require.main === module) {
  console.log(greet('world from the other side'));
}
