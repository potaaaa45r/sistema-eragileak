# Baimenak Linux
- [Baimenak Linux](#baimenak-linux)
  - [Fitxategi eta direktorioren baimenak](#fitxategi-eta-direktorioren-baimenak)
    - [baimen taldeak](#baimen-taldeak)
    - [Baimenak oktalea](#baimenak-oktalea)
  - [Stiky bit baimena](#stiky-bit-baimena)

## Fitxategi eta direktorioren baimenak

Fitxategi eta direktorioren baimenak hurrengo aginduarekin ikusi ditzakegu

ls -a
asd
![alt text](image.png)


### baimen taldeak

- Jabea (user): Fitxategi bat sortzen dugunean,
sortzailea jabea izango da defektuz.
- Talde (group): Fitxategi baten jabetza talde bati ere bai dagokio.
- Besteak (other): Edo taldekideak ez direnal.
 ![](image-1.png)
 Linux sistemetan, "baimen mota" edo "modo deitzailea" eta `chmod` komandoaren erabilera oso garrantzitsua da. Hemen bi termino hauek azaltzen dizkizut:

1. **Baimen motak (Permission Types)**:
   Linux sistemak fitxategi edo direktorio bakoitzeko hiru baimen mota desberdin ditu:
   - **Read (Irakurketa)** (`r`): Fitxategia irakur daiteke.
   - **Write (Idazketa)** (`w`): Fitxategia editatu, idatzi edo eguneratu daiteke.
   - **Execute (Exekuzioa)** (`x`): Fitxategia exekutatu daiteke, adibidez, script-a edo programa bat.

   Baimen motak, fitxategien eta direktorien erabiltzaile, taldea eta beste erabiltzaileak baimendu dezaketen ekintzak zehazten dituzte. `ls -l` komandoa erabiliz, fitxategiak erakutsi daitezke baimen motak ikusi nahi dituzunean.

   Adibidez, `rw-r--r--` baimen mota katea honako esanahia du:
   - Fitxategiaren jabeak (`rw-`) irakurri eta idatzi dezake, baina ezin du exekutatu.
   - Beste erabiltzaile guztiak (`r--`) fitxategia soilik irakurri dezakete, ezin dute editatu edo exekutatu.

2. **`chmod` Aginduaren Motak**:
   `chmod` komandoa erabiltzen da baimen motak aldatzeko. Bi erara erabili daiteke:
   - **Testu erabilera (Symbolic Mode)**: `chmod`-en aginduak sinboloak erabiliz adierazten dira. Adibidez, `u+x` erabiltzean, erabiltzaileak exekutatzeko baimena gehituko dio.
     ```
     chmod u+x fitxategia.txt
     ```

   - **Zenbaki erabilera (Numeric Mode)**: Baimen motak zenbaki baten bitartez adierazten dira.
     - Read (`r`) = 4
     - Write (`w`) = 2
     - Execute (`x`) = 1

     Adibidez, `chmod 644 fitxategia.txt` erabiltzean, `fitxategia.txt`-ri irakurketa baimena ematen dio jabeari eta bestelako erabiltzaileei, eta idazteko baimena jabeari bakarrik.

Hauexek dira, oro har, baimen motak eta `chmod` komandoaren aginduen motak Linuxen. Beti gogoratu, sistemaren segurtasuna arintzeko baimenak behar bezala ezartzea gomendatzen da.

Adibidez, jabeari (user) exekutazio baimena horrela heman ahal ditugu.
```bash
chmod u+x ``` froga.txt
```
### Baimenak oktalea

- 0 = 000 = baimenarik gabe
- 1 = 001 = --x = exekuzio baimena
- 2 = 010 = -w- = idazteko baimena
- 3 = 011 = -wx = idazteko eta exekutazteko baimena
- 4 =100 =r--=irakurtzeko baimena
- 5 = 101 = r-x = irakurtzeko eta exekutatzeko baimena
- 6 = 110 = rw- = irakurtzeko eta idazteko baimena
- 7 = 110 = rwx = baimena guztiak

Baimen guztiak kentzeko
```bash
chmod 000 froga.txt
```
baimen guztiak gehitzeko 
 ```bash
 chmod 777 froga.txt
 ```
Erabiltzeleari baimen guztiak emateko eta besteei edo taldekideei irakurtze exekuzio baimenak emateko.
```bash
chmod 755 froga.txt
```

## Stiky bit baimena

stiky bita daukan fitxategi edo direktorioa  bakarrik jabeak edo roteak aldatu edo borratu dezakete izena
```bash
chmod +t froga.txt
```
![alt text](image-2.png)


