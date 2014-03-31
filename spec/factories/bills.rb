# encoding: UTF-8
FactoryGirl.define do
  factory :bill do

    uid '0-0'

    factory :bill1 do |f|
      f.uid "1-07"
      f.title "Modifica los Códigos de Justicia Militar, Penal y Aeronáutico para abolir la Pena de Muerte."
      f.abstract "Abolición de la pena de muerte."
      f.tags ["pena de muerte", "justicia"]
      f.creation_date "1990-03-20T00:00:00Z"
      f.publish_date "1991-01-23T00:00:00Z"
      f.authors []
      f.resulting_document "Ley Nº 19.029"
      f.bill_draft_link "http://www.leychile.cl/Consulta/obtxml?opt=7&idLey=19029"
    end
    factory :bill2 do |f|
      f.uid "01-07"
      f.title "Fake bill with terms pena de muerte"
      f.abstract "Abolición de la pena de muerte."
      f.tags ["pena de muerte", "justicia"]
      f.creation_date "1990-03-20T00:00:00Z"
      f.publish_date "1991-01-23T00:00:00Z"
      f.authors []
      f.resulting_document "Ley Nº 19.029"
      f.bill_draft_link "http://www.leychile.cl/Consulta/obtxml?opt=7&idLey=19029"
    end
    factory :bill3 do |f|
      f.uid "3773-06"
      f.title "Sobre acceso a la información pública"
      f.abstract "Ley de transparencia"
      f.tags ["transparencia", "acceso a la informacion publica"]
      f.creation_date "2005-01-04T00:00:00Z"
      f.publish_date "2008-08-11T00:00:00Z"
      f.authors ["Gazmuri Mujica, Jaime", "Larraín Fernández, Hernán"]
      f.bill_draft_link "http://www.senado.cl/appsenado/index.php?mo=tramitacion&ac=getDocto&iddocto=202&tipodoc=compa"
    end
    factory :bill4 do |f|
      f.uid "03773-06"
      f.title "Fake bill with terms información pública"
      f.abstract "Ley de transparencia"
      f.tags ["transparencia", "acceso a la informacion publica"]
      f.creation_date "2007-01-04T00:00:00Z"
      f.publish_date "2009-08-11T00:00:00Z"
      f.authors ["Gazmuri Mujica, Jorge", "Larraín Fernández, Hernán"]
      f.bill_draft_link "http://www.senado.cl/appsenado/index.php?mo=tramitacion&ac=getDocto&iddocto=202&tipodoc=compa"
    end
  end
end