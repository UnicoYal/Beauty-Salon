// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

function click() {
    console.log(document.getElementsByClassName('services__names')[0])
    document.getElementsByClassName('services__names')[0].style = 'display: none'
}