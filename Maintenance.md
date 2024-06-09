# Maintenance

If you need to regenerate the index, either

- integrate it into the [program/create_notebook.R](program/create_notebook.R) script, or
- delete old index, and then run the following bash code:

```bash
for arg in $(seq 2003 2017)
do 
echo "- [Codebook for $arg RAIS](output/codebook_${arg}.html)" >> README.md
done
```

## Credit

Code last run by Heloisa de Paula.