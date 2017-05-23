function fetchAndRenderArticles(terms) {
  var url = "https://api.nytimes.com/svc/search/v2/articlesearch.json"
  var reqParams = {
    'api-key': "3bcdb5b3aa1f4ffa84fb80eaa0a7c065",
    'fq': "headline, body",
    'q': terms.query,
    'page': 0,
  }
  const allParams = Object.assign(reqParams, optionalParams(terms))
  const finalParams = $.param(allParams)
  url += '?' + finalParams
  $.ajax({ url: url, success: renderArticles})
}

function optionalParams(terms) {
    var optParams = {}
    if (!!terms.begin_date) {optParams.begin_date = terms.begin_date.replace(/[-]/g,"")}
    if (!!terms.end_date) {optParams.end_date = terms.end_date.replace(/[-]/g,"")}
    if (terms.sort != "none") {optParams.sort = terms.sort}
    return optParams
}

function renderArticles(data) {
  const list = data.response.docs.map( article => {
    return `<li><a href="${article.web_url}" target="_blank">${article.headline.main.slice(0,100)}</a><br>
                Published on: ${dateFixer(article.pub_date.slice(0,10))}<br>
                Summary: <i>${article.snippet}</i><br><br></li>`
  })
  $('#articles').html(list.join("") )
}

function nextLink()
  {  }

function previousLink()
  { if reqParams.page != 0
    { } }

function dateFixer(date)
  { var dStr = new Date(date).toDateString()
    return dStr.slice(4) }

$(document).ready( () => {
  const $query = $('#query')
  const $begin_date = $('#begin_date')
  const $end_date = $('#end_date')
  const $sort= $('#sort')

  $('#article-search').on('submit', event => {
    event.preventDefault()
    const terms = {query: $query.val(), begin_date: $begin_date.val(), end_date: $end_date.val(), sort: $sort.val()}
    fetchAndRenderArticles(terms)
  })

})
