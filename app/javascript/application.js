// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import { Web5 } from "@web5/api";
const { web5, did: myDid } = await Web5.connect();

console.log(myDid);
