# meri
update uygulama.kullanici set AD = concat(ucase(substring(AD,1,1))+lower(substring(AD,2,locate(' ',AD)-1))+upper(substring(AD,locate(' ',AD)+1,1))+lower(substring(AD,locate(' ',AD)+2,80)));
