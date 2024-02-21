`player.gd` on pelin pääskripti, joka hallitsee pelaajan hahmon toimintaa pelin "World" -skenessä. Tämä monipuolinen skripti sisältää toiminnallisuuden hahmon liikkumiselle, hyppäämiselle, avaimen keräämiselle ja pelin tilan hallinnalle.

## Luokan Määrittely ja Tilat

- `enum State { MOVE, CLIMB }`: Enumeraatio, joka määrittelee pelaajan hahmon kaksi tilaa: liikkuminen ja kiipeäminen.
- `current_state`: Muuttuja, joka pitää kirjaa hahmon tämänhetkisestä tilasta.

## Liikkumisen ja Hyppäämisen Määrittelyt

- `const SPEED`, `JUMP_VELOCITY`, `MAX_JUMPS`, `DOUBLE_JUMP_TIME_LIMIT`: Vakiot, jotka määrittelevät pelaajan nopeuden, hypyn voiman, maksimihyppyjen määrän ja tuplahypyn aikarajan.
- `gravity`: Vakio, joka määrittää pelin oletusarvoisen painovoiman.
- `jump_count`, `time_since_last_ground`: Muuttujat, jotka seuraavat hyppyjen määrää ja aikaa viimeisestä maakosketuksesta.

## Alkutoiminnot (`_ready`-funktio)

- Alussa asetetaan kameran, animoitujen spritejen ja avainalueiden viittaukset, aloituspositio ja lisätään hahmo "player" -ryhmään.

## Fysiikan Käsittely (`_physics_process`-funktio)

- Suorittaa pelaajan liikkumisen tai kiipeämisen logiikan tilan mukaan, ja käsittelee hahmon liikettä pelimaailmassa.
- Tarkistaa, onko kamera siirtynyt merkittävästi alkuperäisestä sijainnistaan ja uudelleenkäynnistää pelin tarvittaessa.

## Liikkumisen Käsittely (`process_movement`-funktio)

- Määrittää pelaajan liikkumissuunnan ja nopeuden, päivittää animaation ja käsittelee painovoiman ja hypyn.

## Kiipeämisen Käsittely (`process_climbing`-funktio)

- Määrittää pelaajan nopeuden ylös ja alas tikapuita pitkin, ja päivittää kiipeämis-animaation.

## Animaation Päivitys (`update_animation`-funktio)

- Vaihtaa hahmon animaation liikkumisen ja paikallaan olon mukaan.

## Painovoiman ja Hypyn Käsittely (`process_gravity` ja `process_jump`-funktiot)

- Käsittelee painovoiman vaikutusta hahmoon ja hyppylogiikan suorittamisen.

## Hyppäämisen Mahdollisuuden Tarkistus (`can_jump`-funktio)

- Tarkistaa, voiko hahmo hypätä perustuen pelaajan syötteeseen ja hyppyjen määrään.

## Pelin Uudelleenkäynnistys (`restart_game`-funktio)

- Uudelleenlataa nykyisen pelikohtauksen.

## Avaimen Kerääminen (`pick_up_key`-funktio)

- Asettaa `has_key`-muuttujan arvoksi `true`, indikoiden että pelaaja on kerännyt avaimen.
- Päivittää käyttöliittymän avainindikaattorit osoittamaan, että avain on kerätty:
  - `key_silhouette`-sprite saa alkuperäisen värinsä takaisin, merkiksi siitä, että avain on aktiivinen.
  - `key_filled`-sprite tehdään näkyväksi ja `key_silhouette` piilotetaan, visuaalisesti ilmoittaen pelaajalle avaimen keräämisestä.
- `key_status`-teksti päivitetään näyttämään viestin "You have found the key!" (Olet löytänyt avaimen!).
- Jos `lock`-objekti on määritelty, kutsutaan sen `unlock()`-metodia, mikä lienee avaa lukon ja mahdollistaa pelin etenemisen.

## Pelimekaniikoiden Yhteensovittaminen

`player.gd`-skripti yhdistää pelaajan hahmon liikkeen, animaation, tilanhallinnan, käyttöliittymän vuorovaikutuksen ja pelitilan ohjauksen, mikä tekee siitä pelin keskeisen hallintapisteen. Skriptin rakenne on suunniteltu tukemaan monia pelimekaniikkoja samanaikaisesti, varmistaen sujuvan ja yhdenmukaisen pelaajakokemuksen.

Tämä skripti on hyvä esimerkki siitä, miten GDScriptiä voidaan käyttää laajojen pelin toimintojen luomiseen ja hallintaan. Se osoittaa, miten erilliset toiminnot, kuten liikkuminen, hyppääminen, kiipeäminen ja pelin tilan muutokset, voidaan integroida yhdeksi yhtenäiseksi kokonaisuudeksi.