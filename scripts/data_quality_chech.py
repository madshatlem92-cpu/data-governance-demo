import pandas as pd

df = pd.read_csv("../data/sample_data.csv")

print("Manglende priser:")
print(df[df["price"].isnull()])

print("\nDuplikater:")
print(df[df.duplicated(subset=["product_name"], keep=False)])

print("\nManglende kategori:")
print(df[df["category"].isnull()])
