from collections import Counter
def find_dupes(array):
  """ Find duplicates & arrange them by order of frequency. """
  counts = Counter(array)
  return list(counts)

print find_dupes([1, 1, 2, 3, 4, 5, 5, 5])
