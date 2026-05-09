# x86-lowlevel-toolkit

emu8086 gerçek mod x86 assembly için yeniden kullanılabilir düşük seviyeli yardımcı programlar ve örnek kodları. Öğrenme amaçlı bir repo.

---

## Proje Yapısı
```
x86-lowlevel-toolkit/
├── README.md
└── src/
├── math/
│   ├── fibonacci.asm
│   ├── prime.asm
│   ├── factorial.asm
│   ├── gcd.asm
│   └── arithmetic.asm
├── io/
│   ├── print_char.asm
│   ├── read_char.asm
│   └── print_number.asm
└── string/
├── strlen.asm
└── strcmp.asm
```
## İçerik

### Matematik

**`fibonacci.asm`** — `DL` registerindeki değere en yakın iki Fibonacci sayısını bulur. Sonuç: `BH` = küçük, `BL` = büyük.

**`prime.asm`** — `DL` ile belirlenen üst limite kadar tüm asal sayıları bulur ve `0700:0200h` adresinden itibaren belleğe yazar.

**`factorial.asm`** — `DL` registerindeki sayının faktöriyelini hesaplar. Sonuç `AX`'e yazılır. 16-bit sınırı nedeniyle maksimum 8! desteklenir.

**`gcd.asm`** — Öklid algoritmasıyla iki sayının En Büyük Ortak Bölenini (EBOB) bulur. Giriş: `BL`, `CL`. Sonuç: `AL`.

**`arithmetic.asm`** — `BL` ve `CL` üzerinde temel aritmetik işlemler: toplama, çıkarma, çarpma, bölme. Sonuçlar `AX`'e yazılır.

---

### G/Ç (Giriş/Çıkış)

**`print_char.asm`** — `DL` registerindeki ASCII karakteri DOS interrupt `21h / 02h` kullanarak ekrana yazdırır.

**`read_char.asm`** — DOS interrupt `21h / 01h` kullanarak klavyeden tek karakter okur. Sonuç `AL`'e yazılır.

**`print_number.asm`** — `AX` registerindeki sayıyı stack ve DOS interrupt kullanarak ondalık biçimde ekrana rakam rakam yazdırır.

---

### String

**`strlen.asm`** — Null ile sonlanan bir string'in uzunluğunu hesaplar. Giriş: `SI` = string adresi. Sonuç: `CX` = uzunluk.

**`strcmp.asm`** — İki null-terminated string'i karakter karakter karşılaştırır. Giriş: `SI`, `DI`. Sonuç: `AX = 0` eşitse, `AX = 1` farklıysa.

---

## Gereksinimler

- [emu8086](https://emu8086-microprocessor-emulator.en.softonic.com/) — x86 gerçek mod emülatörü
- Temel x86 register ve komut seti bilgisi

---

## Notlar

Tüm programlar emu8086 ortamında (`org 100h`) modunda yazılmıştır. Register kullanımı emu8086 geleneklerine uygundur.
