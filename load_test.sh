#!/usr/bin/env bash

url=localhost:8000

# Take into account not to surpass the uwsgi listen queue size.

for i in {1..50}; do
    curl -sS "${url}/tweets?a=${i}" > /dev/null &
done

# 50 tweet IDs.
for tweet_id in {965886693374087169,965678542628577298,965758335067869184,965680019027742720,965731172754931712,965919035648106496,965710318692319233,965703117059870720,965730740771196936,965881240766287872,965658242197147649,965812303198343169,965837523527270401,965956092336463872,965739355859050498,965748067403288576,965724101162688512,965769068316897280,965926849640615938,965813276264271872,965709756634628096,907544887066800128,908635955204157442,909695941699162112,909734797072887808,912258335243689984,913314565403930624,915295454967025665,915491663623180288,917808304532918272,917811602199543811,917822496505847808,920926691572273152,921723173409783808,926342274027573248,927490751310827521,927928748577644544,929258756218785792,932536811599130624,932564430239518720,933597320620408832,937973719108120576,940899781345529856,944112577768054785,945637414214782976,946323346379165696,950323603031183360,960804454445432832,962977946364448768,963341605875978240}; do
    curl -sS -H "Cookie: session=eyJfcGVybWFuZW50Ijp0cnVlfQ.DYnySA.Ia_S-66DjcFLlgh6u9pv92wGbB8" --data "tweet_id=${tweet_id}&vote=2" "${url}/vote" > /dev/null &
done

wait