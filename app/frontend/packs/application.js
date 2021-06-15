import Rails from "@rails/ujs"
import 'bootstrap/dist/js/bootstrap'
import 'bootstrap/js/src/alert';
import 'air-datepicker/dist/js/datepicker.min'
import 'lightbox2/dist/js/lightbox.min'
import '../styles/application'

const images = require.context('../images/', true)

Rails.start()
