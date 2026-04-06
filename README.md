
# Obesite_ML

Projet  de classification supervisée des niveaux d'obésité.

## Dataset
- Source : UCI - Estimation of Obesity Levels
- 2111 individus, 14 variables explicatives, 7 classes ordonnées

## Méthodes utilisées
| Méthode | Accuracy | AUC |
|---------|----------|-----|
| Random Forest | 85.4% | 0.976 |
| Logit ordonné | ~56% | 0.745 |
| Arbre de décision | 74.7% | 0.849 |
| LDA | 58.5% | 0.865 |
| QDA | 49.1% | 0.863 |
| SVM | 69.7% | 0.934 |

## Ma contribution
- **Préparation des données** : split train/test, recodage des variables
- **Logit ordonné** (MASS/polr) : modélisation des 7 classes ordonnées, 
interprétation des odds ratios, courbes ROC multiclasses, AUC moyenne 0.745
- **Random Forest** (tidymodels) : tuning des hyperparamètres 
(mtry, trees, min_n), validation croisée, matrice de confusion, 
varImpPlot, accuracy 85.4%, AUC 0.976

## Résultats clés
- Random Forest : meilleure performance globale avec **85.4% d'accuracy et AUC 0.976**

## Auteurs
Projet de groupe — M1 MECEN, Université de Tours, 2026



