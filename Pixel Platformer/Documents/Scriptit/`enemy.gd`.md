# `enemy.gd` Skriptin Selostus

`enemy.gd` on GDScript-skripti, joka on suunniteltu hallitsemaan "Ground Enemy" -vihollisen toimintaa "PixelPlatformer"-pelissä. Skripti laajentaa `CharacterBody2D`-luokkaa, mikä antaa viholliselle pääsyn kaikkiin hahmon liikkumiseen liittyviin toiminnallisuuksiin ja ominaisuuksiin Godot-pelimoottorissa.

## Muuttujat

- `direction`: Vektori, joka määrittää vihollisen liikkumissuunnan. Oletusarvoisesti asetettu liikkumaan oikealle.
- `sprite`: Viittaus `AnimatedSprite2D`-olioon, joka hallitsee vihollisen kuvan animaatioita.
- `ledge_check_right` ja `ledge_check_left`: Viittaukset olioille, jotka tarkistavat, onko vihollisen oikealla tai vasemmalla puolella lattiaa, eli estää vihollista putoamasta reunoilta.

## Alustus (`_ready`-funktio)

- Skriptin alustus tapahtuu `_ready`-funktiossa, joka suoritetaan automaattisesti, kun vihollisinstanssi luodaan peliin. Tässä funktiossa vihollisen sprite ja ledgetarkistajat alustetaan niiden lapsisolmuista.

## Fysiikkaprosessointi (`_physics_process`-funktio)

- `_physics_process`-funktiossa määritellään vihollisen fysiikkalogiikka, joka suoritetaan jokaisen fysiikkapäivityksen yhteydessä.
- `found_wall`: Muuttuja, joka tarkistaa, osuuko vihollinen seinään.
- `found_ledge`: Muuttuja, joka tarkistaa, onko lattian reuna saavutettu molemmilla puolilla vihollista.
- Jos vihollinen törmää seinään tai saavuttaa lattian reunan (`found_wall` tai `found_ledge`), vihollisen liikkumissuunta kääntyy (`direction *= -1`).
- Vihollisen sprite alkaa toistaa "Walking"-animaatiota (`sprite.play("Walking")`).
- Vihollisen nopeus (`velocity`) päivitetään suunnan perusteella käyttäen vakionopeutta 20 pikseliä päivitystä kohti.
- `move_and_slide()`: Metodi, joka liikuttaa vihollista ja huolehtii törmäysten käsittelystä Godotissa. Huomautus: Godot 4:ssä `move_and_slide()` muokkaa automaattisesti `velocity`-ominaisuutta.
- Vihollisen sprite käännetään horisontaalisesti (`sprite.flip_h`), riippuen siitä, liikkuuko vihollinen oikealle vai vasemmalle.

---

Tämä selostus tarjoaa kattavan yleiskuvan `enemy.gd`-skriptin toiminnoista ja siitä, miten se ohjaa "Ground Enemy" -vihollisen käyttäytymistä pelissä.