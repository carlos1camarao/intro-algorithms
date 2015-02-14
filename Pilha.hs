module Pilha (vazia, empilhar, desempilhar, topo, estaVazia) where

newtype Pilha a = Pilha [a]

vazia:: Pilha a
vazia = Pilha []

empilhar:: a -> Pilha a -> Pilha a
empilhar elem (Pilha x) = Pilha (e:x)

desempilhar:: Pilha a -> Pilha a
desempilhar (Pilha [])    = error "desempilhar chamado com pilha vazia"
desempilhar (Pilha (_:x)) = Pilha x

topo:: Pilha a -> a
topo (Pilha [])       = error "topo chamado com pilha vazia"
topo (Pilha (elem:_)) = elem

estaVazia:: Pilha a -> Bool
estaVazia (Pilha p) = null p

