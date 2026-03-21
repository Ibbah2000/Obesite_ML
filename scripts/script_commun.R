set.seed(42)
library(tidyverse)
# 1. Importation de la base de données 
df <- read.csv("data/ObesityDataSet.csv", stringsAsFactors = FALSE)



# 2. Nettoyage et Facteurs
vars_qualitatives <- c("Gender","family_history_with_overweight","FAVC","CAEC",
"SMOKE","SCC","CALC","MTRANS")

df[vars_qualitatives] <- lapply(df[vars_qualitatives], as.factor) 


# c) Encodage de la variable cible NObeyesdad (Facteur ORDONNÉ) 
niveaux_poids <- c("Insufficient_Weight", "Normal_Weight", 
                   "Overweight_Level_I", "Overweight_Level_II", 
                   "Obesity_Type_I", "Obesity_Type_II", "Obesity_Type_III") 

df$NObeyesdad <- factor(df$NObeyesdad, levels = niveaux_poids, ordered = TRUE) 

# 3. Train/Test des données
n<-nrow(df)
N<-round(n*0.70)
Train <- sample(1:n,N)
df_Train <- df %>% slice(Train)
df_Test <- df %>% slice (-Train)


# 4.  Visualisation de la variable cible 
library(ggplot2)

ggplot(df_Train, aes(x = NObeyesdad, fill = NObeyesdad)) +
  geom_bar() +
  coord_flip() + # On tourne le graphique pour mieux lire les noms
  theme_minimal() +
  labs(title = "Répartition des classes d'obésité (Base d'entraînement)",
       x = "Catégorie",
       y = "Nombre d'individus") +
  theme(legend.position = "none")



