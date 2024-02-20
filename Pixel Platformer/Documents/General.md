# 1. Johdanto

## Pelin Kuvaus

"PixelPlatformer" on yksitasoinen tasohyppelypeli, joka vie pelaajat värikkääseen ja dynaamiseen pixelart maailmaan. Pelin keskeinen mekaniikka perustuu perinteiseen tasohyppelypelien konseptiin, jossa pelaajan ohjaama hahmo navigoi erilaisten esteiden ja vihollisten läpi tavoitteenaan löytää avain, joka avaa tien pelin loppuun. Pelin grafiikka on retrohenkinen, mikä tuo nostalgista viehätystä ja vetoaa sekä vanhoihin että uusiin pelaajiin.

## Pelin Tavoite

Pelaajan päätavoitteena "PixelPlatformerissa" on ohjata hahmoa läpi ainutlaatuisen ja haastavan ympäristön, väistellen esteitä ja selviytyen vihollisten aiheuttamista vaaroista. Taso on suunniteltu siten, että se tarjoaa pelaajalle erilaisia reittejä. Avaimen löytäminen on kriittinen osa pelikokemusta, sillä se mahdollistaa lukon avaamisen ja pelin läpäisemisen. Lukon avaaminen on viimeinen toimenpide, jonka jälkeen pelaaja palaa päävalikkoon, jossa voi joko aloittaa pelin uudelleen tai lopettaa pelin. Tämä yksinkertainen mutta mukaansatempaava konsepti luo toistettavan ja nautinnollisen pelikokemuksen.

Pelin puitteissa pelaajat voivat kokea onnistumisen tunteita selviytyessään haastavista esteistä ja löytäessään avaimen. Tämä saavutuksen tunne vahvistuu, kun pelaaja avaa lukon ja saavuttaa pelin päätöksen. "Pixelpeliseikkailun" selkeä rakenne ja tavoitteet tekevät siitä helposti lähestyttävän ja viihdyttävän, tarjoten pelaajille lyhyen mutta haastavan pelielämyksen, joka sopii kaikenikäisille ja taitotasoille.

-----
# 2. Pelin Mekaniikat

Pelimekaniikat ovat oleellinen osa pelikokemusta. Ne on suunniteltu olemaan sekä intuitiivisia että haastavia, jotta pelaajat voivat nauttia pelistä ja sen tarjoamista erilaisista haasteista.

## Liikkuminen ja Ohjaus

Pelaaja ohjaa hahmoa, joka liikkuu joko vasemmalle tai oikealle. Hahmon hyppy on vakioitu toiminto, jossa hyppyvoima on aina sama. Tämä tekee kontrollista yksinkertaisempaa ja helpottaa pelaajia saamaan tuntuman pelin mekaniikkaan. Lisäksi pelaaja voi käyttää tuplahyppyä, joka antaa mahdollisuuden suorittaa ylimääräisen hypyn ilmassa. Tämä lisää strategista elementtiä peliin ja antaa pelaajalle enemmän liikkumavapautta ja vaihtoehtoja esteiden ylittämiseen.

## Esteet ja Ympäristö

Pelitaso sisältää erilaisia esteitä, kuten piikit, jotka vahingoittavat pelaajaa ja vesiesteet, jotka vaativat tarkkaa hyppäämistä. Kuilut ja korkeat tasot edellyttävät pelaajalta tuplahypyn taitavaa käyttöä päästäkseen eteenpäin tasossa.

## Viholliset

Pelin viholliset ovat suunniteltu tarjoamaan erityyppisiä haasteita. Ilmassa liikkuvat piikkipallot ja tietyllä reitillä lentävät linnut ovat esimerkkejä vihollisista, jotka pelaajan on opittava tunnistamaan ja väistämään. Pelissä on myös maassa partioivia vihollisia joita pelaajan on väistettävä. Erityisen maininnan ansaitsee "stomp enemy", liikkumaton palikka, joka alkaa täristä ennen kuin se putoaa yrittäen murskata pelaajan. Jos pelaaja jää sen alle, pelaajahahmo kuolee, mutta jos stomp enemy ei osu pelaajaan, se luo pölypilven (partikkeliefekti) ja nousee hitaasti takaisin ylös. Pelaajat voivat hyödyntää stomp enemyä "hissinä" hyppäämällä sen päälle päästäkseen korkeammille tasoille, joihin tavallisella tai tuplahypyllä ei ylletä. Tämä lisää peliin uuden taktisen ulottuvuuden ja antaa pelaajalle lisää keinoja navigoida pelimaailmassa.

-----
# 3. Tason Suunnittelu

Pelissä tason suunnittelu on keskeinen osa pelikokemusta. Taso on suunniteltu niin, että se tarjoaa pelaajille sekä esteettisen nautinnon että pelimekaniikkojen mukaisia haasteita.

## Tason Layout

Taso koostuu perinteisestä tasohyppelypelin elementeistä, kuten alustoista, esteistä, vihollisista ja kerättävistä esineistä. Alustat on sijoitettu strategisesti niin, että pelaajan täytyy käyttää hyppyä ja tuplahyppyä päästäkseen eteenpäin. Taso sisältää erilaisia korkeuksia ja reittejä, jotka tarjoavat pelaajille mahdollisuuden tutkia ja löytää erilaisia tapoja saavuttaa tavoitteensa.

Esteet, kuten piikit ja kuilut, on suunniteltu haastamaan pelaajien ajoitusta ja taitoja. Vesialueet ja leijuvat alustat lisäävät tason monimuotoisuutta ja edellyttävät pelaajilta tarkkaa liikkeiden hallintaa.

## Avain ja Lukko

Tason päätavoite on löytää avain, joka on piilotettu leveliin. Avaimen sijainti on sellainen, että pelaajan on ensin selvitettävä useita esteitä ja vihollisia ennen kuin se on saavutettavissa. Kun avain on löydetty, pelaajan täytyy navigoida tason läpi löytääkseen lukon, joka sijaitsee kartan lopussa, lukko on aluksi lukittu ja deaktivoitu mutta kun avain on pelaajan hallussa niin lukko muuttuu visuaalisesti niin että pelaaja ymmärtää sen olevan nyt käytettävissä. Lukon avaaminen symboloi pelin päämäärän saavuttamista ja paluuta päävalikkoon, mikä antaa pelaajalle tunteen saavutuksesta ja onnistumisesta.

Tämä taso on suunniteltu niin, että pelaaja voi kokea monia pieniä voittoja matkalla lopulliseen päämäärään.

## Esteiden ja Vihollisten Sijoittelu

Esteet ja viholliset on sijoitettu tarkkaan harkiten niin, että ne haastavat pelaajan taitoja. Tämä tasapaino on tärkeä osa pelisuunnittelua, sillä se varmistaa, että peli on haastava mutta myös nautittava. "Stomp enemy" toimii dynaamisena esteenä, joka lisää ylimääräisen kerroksen strategiaan, kun pelaaja päättää, milloin ja miten hyödyntää näitä vihollisia edetäkseen pelissä.

-----

# 4. Graafinen Suunnittelu

"PixelPlatformerin" visuaalinen identiteetti pohjautuu @HeartBeastin tarjoamaan assettipakettiin, jonka grafiikat ovat vapaasti käytettävissä. Tämä assettipaketti sisältää kattavan valikoiman spriteja ja tekstuuritaustaa, joka on suunniteltu noudattamaan klassisen pikselitaiteen estetiikkaa.

## Assettipaketin Hyödyntäminen

@HeartBeastin assettipaketti tarjoaa laajan valikoiman ympäristön elementtejä, hahmoja ja vihollisia, jotka on suunniteltu yhteensopiviksi keskenään ja jotka helpottavat konsistentin visuaalisen teeman luomista.

## Visuaalisen Ilmeen Räätälöinti

Vaikka assettipaketti tarjoaa pohjan pelin grafiikoille, olen pelikehittäjänä tehnyt räätälöintejä ja muutoksia varmistaakseen, että grafiikat sopivat peliin ja mekaniikoihin. Spritejen sijoittelu, animaatioiden ajoitus ja ympäristön elementtien yhdistäminen on tehty huolella, jotta peli tarjoaa omaleimaisen ja immersiivisen kokemuksen.

## Omatoiminen Oppiminen ja Soveltaminen

Vaikka projekti alkoi käyttäen @HeartBeastin tarjoamaa tutoriaalia, pelin kehitys vaati omatoimista oppimista ja soveltamista, kun tutoriaali osoittautui vanhentuneeksi. Tämä on vaatinut ymmärrystä pelikehitystyökaluista ja -prosesseista, sekä kykyä soveltaa ja laajentaa olemassa olevia resursseja vastaamaan pelin uniikkeja tarpeita.

-----
# 5. Koodaus

"PixelPlatformerin" koodirakenne muodostuu useista Godot Engine -pelimoottorissa käytettävistä GDScript-skripteistä. Nämä skriptit ovat vastuussa pelin kaikkien toiminnallisuuksien hallinnasta, kuten pelaajan liikkumisesta, vihollisten käyttäytymisestä, esteiden toiminnasta ja pelin yleisestä logiikasta.

## Skriptien Yleiskatsaus

Jokainen pelin osa-alue on jaettu omaksi skriptikseen, mikä helpottaa projektin hallintaa ja mahdollistaa modulaarisen kehitystyön. Skriptien nimet ovat kuvaavia ja vastaavat niiden toiminnallisuutta pelissä:

-[[ `enemy.gd`]] & [[`Enemy2.gd`]]: Kontrolloivat "Ground Enemy" -vihollisen toimintaa sekä pelissä että päävalikossa (`Enemy2.gd`).
- [[`hitbox.gd`]]: Määrittelee osumatunnistuksen (Hitboxin) pelaajan ja muiden pelin objektien välillä.
- [[`key_area.gd`]]: Käsittelee avaimen keräämisen logiikkaa ja sen vaikutusta pelin kulkuun.
- [[`Ladder.gd`]]: Tarjoaa kiipeämismekaniikan tikapuita tai muita kiipeiltäviä pintoja varten.
- `lock.gd`: Sisältää lukon avaamisen toiminnallisuuden, kun pelaaja on kerännyt avaimen.
- `menu.gd`: Vastaa päävalikon toiminnoista ja siirtymisestä pelin eri tilojen välillä.
- `pauseMenu.gd`: Hallinnoi pelin taukotilan toimintaa ja valikkoa.
- `player.gd`: On pelaajan hahmon ohjauksen ydin, sisältäen liikkeen, hypyn ja tuplahypyn logiikan.
- `stomp_enemy.gd` & `stomp_enemy_menu.gd`: Kontrolloivat "stomp enemy" -vihollisen toimintaa sekä pelissä että päävalikossa (`stomp_enemy_menu.gd`).
- `world.gd`: Pitää sisällään pausemenun rakenteen ja toimii pelimaailman "ohjaajana".

## Modulaarinen Rakenne ja Yhteistyö

Skriptien modulaarinen rakenne mahdollistaa helpon skaalauksen ja yhteistyön. Kehittäjät voivat työstää eri osa-alueita samanaikaisesti ilman, että muutoksen riski aiheuttaisi laajamittaisia ongelmia koodikannassa. Tämä lähestymistapa myös tekee virheenjäljityksestä ja bugien korjaamisesta tehokkaampaa.

## Selostukset

Jokaisesta skriptistä annetaan tarkka selostus, joka sisältää niiden toiminnallisuuden yksityiskohtaiset kuvaukset, käytetyt metodit ja niiden vaikutukset pelin kokonaisvaltaiseen toimintaan. Tämä tieto auttaa ymmärtämään, miten eri pelin osaset toimivat yhteen luoden sujuvan ja viihdyttävän pelikokemuksen.

-----

# 6. Käyttöliittymä

"PixelPlatformerin" käyttöliittymä on suunniteltu olemaan intuitiivinen ja helppokäyttöinen, jotta pelaajat voivat keskittyä itse pelikokemukseen mahdollisimman vähän häiriintyneenä. Käyttöliittymän elementit ovat selkeitä ja visuaalisesti yhtenäisiä pelin graafisen suunnittelun kanssa.

## Päävalikko

Peli alkaa päävalikosta, joka tarjoaa pelaajalle mahdollisuuden aloittaa uuden pelin tai poistua pelistä. Päävalikon suunnittelussa on keskitytty selkeyteen ja navigoinnin helppouteen. Pelaajat voivat käynnistää pelin tai lopettaa sen yksinkertaisilla painikkeilla, jotka ovat selkeästi merkitty.

## Pelitila

Kun peli on käynnissä, käyttöliittymä on suunniteltu olemaan mahdollisimman huomaamaton, jotta pelaajan huomio pysyy pelin tapahtumissa. Kuitenkin tärkeät pelitiedot, kuten kerätyt avaimet tai viestit, näytetään selkeästi mutta diskreetisti peliruudulla.

## Taukotila

Pelin taukotila (Pause Menu) aktivoituu, kun pelaaja painaa taukopainiketta (Esc). Taukotilassa peli pysähtyy ja näytölle ilmestyy valikko, josta pelaaja voi jatkaa peliä ta tai palata päävalikkoon. Taukotilan käyttöliittymä on suunniteltu jatkamaan pelin esteettistä tyyliä ja tarjoamaan selkeät toiminnot ilman, että pelaajan tarvitsee arvailla seuraavia askeleita.

-----

# 8. Julkaisu ja Jatkokehitys

Julkaisuprosessi keskittyy pelin paikallisen version ja selaimessa toimivan WebGL-version rakentamiseen ja julkaisemiseen.

## Paikallinen ja WebGL Julkaisu

Peliprojektin loppuvaiheessa suoritetaan paikallinen build, joka mahdollistaa pelin suorittamisen ilman verkkoyhteyttä. WebGL-build taas muuntaa pelin selainpohjaiseksi, jolloin se on pelattavissa suoraan verkkoselaimessa ilman lisäohjelmien asennusta. Tämä monialustainen lähestymistapa varmistaa, että peli on saavutettavissa laajalle käyttäjäkunnalle.

## GitHub Pages -julkaisu

Peliprojektin web-versio tullaan julkaisemaan GitHub Pages -alustalla, mikä tarjoaa helpon ja käytännöllisen tavan saada peli yleisön saataville. GitHub Pages mahdollistaa pelin jakamisen nopeasti ja vaivattomasti, ja se on ihanteellinen ratkaisu kouluprojekteille, jotka eivät vaadi kaupallista jakelualustaa.

## Jatkokehitys

Vaikka "Pixelpeliseikkailu" on ensisijaisesti harjoittelu projekti, jatkokehityksen mahdollisuudet pidetään avoimina. Palautteen ja kokemuksen pohjalta voidaan harkita pelin laajentamista, esimerkiksi uusien tasojen, mekaniikkojen tai tarinaelementtien lisäämistä. Jatkokehitys voi sisältää myös koodin refaktorointia, suorituskyvyn parantamista ja uusien ominaisuuksien kehittämistä, jotka rikastuttavat pelikokemusta ja oppimisprosessia.