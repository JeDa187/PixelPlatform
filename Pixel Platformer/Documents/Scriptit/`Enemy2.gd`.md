
# `Enemy2.gd` Skriptin Selostus

`Enemy2.gd` on GDScript-skripti "PixelPlatformer"-pelissä, joka hallitsee päävalikossa näkyvää vihollisen animaatiota. Skripti laajentaa `AnimatedSprite2D`-luokkaa, mikä mahdollistaa animaatioiden helpon hallinnan.

## Alustus (`_ready`-funktio)

- Kun vihollisinstanssi alustetaan, `_ready`-funktio luo uuden `Timer`-solmun, joka toimii ajastimena animaation käynnistämiseen.
- Ajastimen `wait_time` asetetaan yhteen sekuntiin, mikä määrittää kuinka kauan odotetaan ennen animaation käynnistämistä.
- `one_shot`-ominaisuus asetetaan arvoon `true`, mikä tarkoittaa, että ajastin toimii vain kerran eikä toista animaatiota automaattisesti.
- Ajastin lisätään lapsisolmuna nykyiseen solmuun `add_child(timer)`-kutsulla.
- `timeout`-signaali yhdistetään `_on_Timer_timeout`-funktioon, joka on määritelty tässä skriptissä ja joka käynnistää animaation, kun ajastin saavuttaa määräajan.

## Ajastimen Päättymisfunktio (`_on_Timer_timeout`)

- Tämä funktio on signaalin kuuntelija, joka aktivoituu, kun `Timer`-solmun määräaika täyttyy.
- Funktiossa kutsutaan `play()`-metodia, joka käynnistää `AnimatedSprite2D`-luokan animaation.

---

Tämä selostus antaa tarkan ymmärryksen siitä, miten `Enemy2.gd`-skripti toimii pelin päävalikossa. Se kuvaa yksityiskohtaisesti, miten skripti käyttää ajastinta animaation ajastetun käynnistyksen hallintaan. Ei ole kyse pelattavasta vihollisesta, vaan yksinkertaisesti animoidusta hahmosta, joka elävöittää päävalikon visuaalista ilmettä. Ajastinta on käytettävä koska valikossa vihollisia on useita ja halutaan hallinnoida animaatioiden aloitusta jotta ne ei kaikki toistu samanaikaisesti. 