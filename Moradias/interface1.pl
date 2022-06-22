:- dynamic(fact/1), [forward,proof,bd].
if preco1 and tipo1 and estacao2 and regiao1 and garagem2 and casa2 and diversao2 then '1'.
if preco1 and tipo2 and estacao2 and regiao2 and garagem1 and casa1 and diversao2 then '2'.
if preco1 and tipo2 and estacao2 and regiao1 and garagem1 and casa1 and diversao1 then '3'.
if preco1 and tipo1 and estacao2 and regiao3 and garagem1 and casa2 and diversao1 then '4'.
if preco1 and tipo2 and estacao4 and regiao1 and garagem1 and casa1 and diversao1 then '5'.
if preco1 and tipo2 and estacao1 and regiao2 and garagem1 and casa1 and diversao2 then '6'.
if preco2 and tipo2 and estacao3 and regiao2 and garagem1 and casa3 and diversao1 then '7'.
if preco2 and tipo2 and estacao2 and regiao2 and garagem2 and casa3 and diversao2 then '8'.
if preco1 and tipo2 and estacao4 and regiao1 and garagem2 and casa3 and diversao1 then '9'.
if preco1 and tipo3 and estacao1 and regiao1 and garagem2 and casa3 and diversao2 then '10'.
if preco1 and tipo1 and estacao2 and regiao3 and garagem2 and casa3 and diversao2 then '11'.
if preco1 and tipo1 and estacao2 and regiao3 and garagem1 and casa1 and diversao1 then '12'.
if preco1 and tipo2 and estacao1 and regiao3 and garagem1 and casa1 and diversao2 then '13'.
if preco4 and tipo2 and estacao2 and regiao3 and garagem1 and casa1 and diversao2 then '14'.
if preco4 and tipo2 and estacao2 and regiao3 and garagem2 and casa3 and diversao2 then '15'.
if preco2 and tipo3 and estacao1 and regiao2 and garagem2 and casa3 and diversao1 then '16'.
if preco3 and tipo3 and estacao1 and regiao2 and garagem1 and casa2 and diversao1 then '17'.

%Base de conhecimento

:- op( 800, fx, if).
:- op( 700, xfx, then).
:- op( 300, xfy, or).
:- op( 200, xfy, and).

