# `stomp_enemy.gd` Skriptin Selostus

`stomp_enemy.gd` on GDScript, joka laajentaa `CharacterBody2D`-luokkaa ja kontrolloi "stomp enemy" -vihollisen käyttäytymistä pelissä.

## Vihollisen Tilat

- `enum {HOVER, FALL, LAND, RISE}`: Määrittelee vihollisen eri tilat: leijuminen (HOVER), putoaminen (FALL), maahan osuessa (LAND) ja nousu takaisin (RISE).

## Muuttujien Määrittelyt

- `state`: Nykyinen tila, joka kertoo, missä toimintavaiheessa vihollinen on.
- `start_position`: Vihollisen alkuperäinen positio, johon se palaa noustuaan.
- `rise_speed` ja `fall_speed`: Nopeudet, joilla vihollinen nousee ja putoaa.
- `tremble_magnitude`: Tärinäefektin voimakkuus.
- `is_trembling`: Bool-arvo, joka kertoo, täriseekö vihollinen tällä hetkellä.
- `animated_sprite`: Viittaus `AnimatedSprite2D`-olioon, joka hallitsee vihollisen animaatioita.
- `dust_particles`: Viittaus `CPUParticles2D`-olioon, joka luo pölyefektin vihollisen osuessa maahan.

## Alkutoiminnot (`_ready`-funktio)

- Alustetaan skriptin muuttujat ja yhdistetään signaalit. `animated_sprite` ja `dust_particles` asetetaan viittaamaan niiden vastaaviin solmuihin pelihierarkiassa.
- Määritellään ajastimet, jotka kontrolloivat vihollisen eri tilojen ajoitusta, kuten kuinka kauan vihollinen leijuu ennen kuin se alkaa täristä ja putoaa, sekä kuinka kauan se viipyy maassa ennen kuin se nousee takaisin.

## Fysiikkaprosessointi (`_physics_process`-funktio)

- Skripti käyttää `match`-lauseketta vihollisen tilan perusteella suoritettavien toimintojen hallintaan. Kunkin tilan aikana suoritetaan erilaisia toimintoja, kuten tilan vaihto, animaation toisto ja liikkeen soveltaminen.
- `FALL`-tilassa vihollinen putoaa ja tarkistaa `RayCast2D`:n avulla, osuuko se maahan, mikä vaihtaa tilan `LAND`-tilaan ja käynnistää pölyefektin.
- `RISE`-tilassa vihollinen nousee takaisin aloituspositioonsa ja vaihtaa tilan `HOVER`-tilaan, kun se saavuttaa sen.

## Ajastimien Käsittely

- Vihollisen eri toimintatiloja hallitaan useilla ajastimilla, jotka käynnistävät tilanmuutokset määrätyin väliajoin. Esimerkiksi `HoverEndTimer` käynnistää tärinäefektin, ja `LandTimer` määrittää, kuinka kauan vihollinen viipyy maassa ennen nousua.

## Tärinäefektin Soveltaminen (`_on_HoverTrembleTimer_timeout` ja `apply_tremble`)

- Kun vihollinen tärisee odottaessaan putoamista, `apply_tremble`-funktio soveltaa pientä satunnaista liikettä vihollisen positioon, luoden tärinäefektin.
- Tärinäefektin voimakkuus ja suunta määritellään `tremble_magnitude`-muuttujan avulla, ja vihollisen sijainti pidetään alkuperäisen sijainnin lähellä käyttäen `clamp`-funktiota.

## Pölyefektin Emitointi (`emit_dust_effect`)

- Kun vihollinen osuu maahan `FALL`-tilassa, `emit_dust_effect`-funktio käynnistää `dust_particles`-oliolle määritellyn pölyefektin, visuaalisesti ilmentäen iskun voimakkuutta.

Tämä skripti tarjoaa monipuolisen lähestymistavan vihollisen käyttäytymisen mallintamiseen, yhdistäen tilanhallinnan, animaatioiden, partikkeleiden efektien ja ajastimien käytön luomaan dynaamisen ja interaktiivisen vihollisen peliin.