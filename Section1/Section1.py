#!/usr/bin/env python
# coding: utf-8

# ### Import Library and Load Data

import pandas as pd

df = pd.read_csv("https://raw.githubusercontent.com/jaabberwocky/dataeng_test/master/dataset.csv",error_bad_lines=False)


# ### Processing Data

#Split the name field into first_name, and last_name
df["first_name"] = df["name"].str.split(" ",n=1,expand=True)[0]
df["last_name"] = df["name"].str.split(" ",n=1,expand=True)[1]


#Remove any zeros prepended to the price field
df["new_price"] = [i.lstrip("0") for i in df.price.astype(str)]
df["new_price"] = df["new_price"].astype(float)


#Delete any rows which do not have a name
df[df.name.notnull()]


#Create a new field named above_100, which is true if the price is strictly greater than 100
df['above_100'] = df['new_price'].apply(lambda x: 'true' if x>100 else 'false')

new_df = df[["name","first_name","last_name","new_price","above_100"]]

new_df.to_csv("./ProcessedFile.csv")





