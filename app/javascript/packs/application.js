import "../stylesheets/birthday.css"
import "../stylesheets/letter.css"
import "../stylesheets/letter_collection.css"
import "../stylesheets/person.css"
import "../stylesheets/search_form.css"

// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
// node.js 18 and earlier,  needs globalThis.crypto polyfill
console.log("Loading web5 resources")

const {web5, did: myDid} = await Web5.connect();

console.log(myDid);
