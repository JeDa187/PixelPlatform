# `stomp_enemy_menu.gd` Skriptin Selostus

`stomp_enemy_menu.gd` on GDScript, joka laajentaa `CharacterBody2D`-luokkaa Godot-pelimoottorissa. Skripti on suunniteltu hallitsemaan "stomp enemy" -vihollisen animaatioita ja käyttäytymistä pelin päävalikossa, luoden dynaamisen ja elävöitetyn taustan.

## Tärinäefektin Asetukset

- `tremble_magnitude`: Määrittelee tärinäefektin voimakkuuden.
- `is_trembling`: Bool-arvo, joka osoittaa, onko tärinäefekti käynnissä.
- `original_position`: Tallentaa vihollisen alkuperäisen sijainnin.
- `tremble_timer` ja `stop_tremble_timer`: Ajastimet, jotka kontrolloivat tärinän aloittamista ja lopettamista.

## Alustustoiminnot (`_ready`-funktio)

- Tallentaa alkuperäisen sijainnin ja asettaa `AnimatedSprite2D`-komponentin.
- Kutsuu `setup_timers`-funktiota ajastimien alustamiseksi ja käynnistämiseksi.

## Ajastimien Asetukset (`setup_timers`)

- Määritellään ja lisätään lapssolmuina kaksi ajastinta: yksi tärinän aloittamiselle ja toinen tärinän lopettamiselle.
- Kumpikin ajastin asetetaan yksittäiskäyttöiseksi (`one_shot = true`) ja niiden signaalit yhdistetään vastaaviin funktioihin (`start_tremble` ja `stop_tremble`).

## Tärinän Hallinta

- `start_tremble`: Asettaa `is_trembling`-muuttujan todeksi ja vaihtaa animaation tärinän ajaksi.
- `stop_tremble`: Palauttaa `is_trembling`-muuttujan epätodeksi ja animaation alkuperäiseksi, käynnistäen samalla tärinäajastimen uudelleen.

## Prosessointi (`_process`-funktio)

- Tarkistaa, onko tärinäefekti käynnissä, ja soveltaa `apply_tremble`-funktiota tärinäefektin aikaansaamiseksi.
- Jos tärinä ei ole käynnissä, palauttaa vihollisen alkuperäiseen sijaintiin.

## Tärinäefektin Soveltaminen (`apply_tremble`)

- Laskee satunnaisen tärinän X- ja Y-suunnassa käyttäen `tremble_magnitude`-muuttujaa ja lisää tämän arvon vihollisen alkuperäiseen sijaintiin, luoden visuaalisen tärinäefektin.

---

Tämä skripti tarjoaa yksinkertaisen, mutta tehokkaan tavan lisätä elävyyttä päävalikkoon "stomp enemy" -vihollisen avulla. Tärinäefekti ja animaatioiden vaihtelu auttavat luomaan dynaamisen ja houkuttelevan taustan, joka tekee päävalikosta visuaalisesti mielenkiintoisemman.