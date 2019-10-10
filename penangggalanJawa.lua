
function Update()
 Thn      = os.date("*t")
 th2      = (Thn.year)
 Bl2      = (Thn.month)
 tgl      = (Thn.day)

 ht       = os.date("%j")
 hb       = ht-Bl2
        if (hb >= 0) and (hb <= 31) then
          hb = 0
        elseif (hb>=31) and (hb <=59)then
          hb =31
        elseif (hb>=59) and (hb <=90)then
          hb =59
        elseif (hb>=90) and (hb <=120)then
          hb =90
        elseif (hb>=120) and (hb <=151)then
          hb =120
        elseif (hb>=181) and (hb <=212)then
          hb =181
        elseif (hb>=212) and (hb <=243)then
          hb =212
        elseif (hb>=243) and (hb <=273)then
          hb =243
        elseif (hb>=273) and (hb <=304)then
          hb =273
        elseif (hb>=304) and (hb <=334)then
          hb =304
        elseif (hb>=334) and (hb <=365)then
          hb =334
        end
 jml_Kabisat = 1 + math.floor (th2/4)

  if (th2>100) then
          jml_Kabisat = jml_Kabisat - math.floor(th2/100) end

  if (th2>399) then
          jml_Kabisat = jml_Kabisat + math.floor(th2/400) end

  if (th2- (math.floor(th2/4)*4)<1 and Bl2 <3) then
          jml_Kabisat = jml_Kabisat - 1 end


jmlhari = th2*365 + hb +tgl+jml_Kabisat
 urutan_hari = jmlhari - (math.floor(jmlhari/7)*7)
 pasaran_jawa=jmlhari - (math.floor(jmlhari/5)*5)
 if pasaran_jawa == 0 then
        pasaran_jawa = "Kliwon"
      elseif pasaran_jawa == 1 then
          pasaran_jawa = "Legi"
      elseif pasaran_jawa == 2 then
          pasaran_jawa = "Pahing"
      elseif pasaran_jawa == 3 then
        pasaran_jawa = "Pon"
      elseif pasaran_jawa == 4 then
        pasaran_jawa = "Wage" end

 hasil = pasaran_jawa
    if(tgl>28) then

      if(((th2%4)>0 and Bl2 == 2) or tgl>30) then

        if (Bl2 ~=1 and Bl2 ~=3 and Bl2 ~=5 and Bl2 ~=7 and Bl2 ~=8 and Bl2 ~=10 and Bl2 ~=12) then
        hasil = false end
    end
    return pasaran_jawa
  end
return hasil
end
