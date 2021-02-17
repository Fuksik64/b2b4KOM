(function (a, b) {
  function cy(a) {
    return f.isWindow(a)
      ? a
      : a.nodeType === 9
      ? a.defaultView || a.parentWindow
      : !1;
  }
  function cu(a) {
    if (!cj[a]) {
      var b = c.body,
        d = f("<" + a + ">").appendTo(b),
        e = d.css("display");
      d.remove();
      if (e === "none" || e === "") {
        ck ||
          ((ck = c.createElement("iframe")),
          (ck.frameBorder = ck.width = ck.height = 0)),
          b.appendChild(ck);
        if (!cl || !ck.createElement)
          (cl = (ck.contentWindow || ck.contentDocument).document),
            cl.write(
              (f.support.boxModel ? "<!doctype html>" : "") + "<html><body>"
            ),
            cl.close();
        (d = cl.createElement(a)),
          cl.body.appendChild(d),
          (e = f.css(d, "display")),
          b.removeChild(ck);
      }
      cj[a] = e;
    }
    return cj[a];
  }
  function ct(a, b) {
    var c = {};
    f.each(cp.concat.apply([], cp.slice(0, b)), function () {
      c[this] = a;
    });
    return c;
  }
  function cs() {
    cq = b;
  }
  function cr() {
    setTimeout(cs, 0);
    return (cq = f.now());
  }
  function ci() {
    try {
      return new a.ActiveXObject("Microsoft.XMLHTTP");
    } catch (b) {}
  }
  function ch() {
    try {
      return new a.XMLHttpRequest();
    } catch (b) {}
  }
  function cb(a, c) {
    a.dataFilter && (c = a.dataFilter(c, a.dataType));
    var d = a.dataTypes,
      e = {},
      g,
      h,
      i = d.length,
      j,
      k = d[0],
      l,
      m,
      n,
      o,
      p;
    for (g = 1; g < i; g++) {
      if (g === 1)
        for (h in a.converters)
          typeof h == "string" && (e[h.toLowerCase()] = a.converters[h]);
      (l = k), (k = d[g]);
      if (k === "*") k = l;
      else if (l !== "*" && l !== k) {
        (m = l + " " + k), (n = e[m] || e["* " + k]);
        if (!n) {
          p = b;
          for (o in e) {
            j = o.split(" ");
            if (j[0] === l || j[0] === "*") {
              p = e[j[1] + " " + k];
              if (p) {
                (o = e[o]), o === !0 ? (n = p) : p === !0 && (n = o);
                break;
              }
            }
          }
        }
        !n && !p && f.error("No conversion from " + m.replace(" ", " to ")),
          n !== !0 && (c = n ? n(c) : p(o(c)));
      }
    }
    return c;
  }
  function ca(a, c, d) {
    var e = a.contents,
      f = a.dataTypes,
      g = a.responseFields,
      h,
      i,
      j,
      k;
    for (i in g) i in d && (c[g[i]] = d[i]);
    while (f[0] === "*")
      f.shift(),
        h === b && (h = a.mimeType || c.getResponseHeader("content-type"));
    if (h)
      for (i in e)
        if (e[i] && e[i].test(h)) {
          f.unshift(i);
          break;
        }
    if (f[0] in d) j = f[0];
    else {
      for (i in d) {
        if (!f[0] || a.converters[i + " " + f[0]]) {
          j = i;
          break;
        }
        k || (k = i);
      }
      j = j || k;
    }
    if (j) {
      j !== f[0] && f.unshift(j);
      return d[j];
    }
  }
  function b_(a, b, c, d) {
    if (f.isArray(b))
      f.each(b, function (b, e) {
        c || bD.test(a)
          ? d(a, e)
          : b_(a + "[" + (typeof e == "object" ? b : "") + "]", e, c, d);
      });
    else if (!c && f.type(b) === "object")
      for (var e in b) b_(a + "[" + e + "]", b[e], c, d);
    else d(a, b);
  }
  function b$(a, c) {
    var d,
      e,
      g = f.ajaxSettings.flatOptions || {};
    for (d in c) c[d] !== b && ((g[d] ? a : e || (e = {}))[d] = c[d]);
    e && f.extend(!0, a, e);
  }
  function bZ(a, c, d, e, f, g) {
    (f = f || c.dataTypes[0]), (g = g || {}), (g[f] = !0);
    var h = a[f],
      i = 0,
      j = h ? h.length : 0,
      k = a === bS,
      l;
    for (; i < j && (k || !l); i++)
      (l = h[i](c, d, e)),
        typeof l == "string" &&
          (!k || g[l]
            ? (l = b)
            : (c.dataTypes.unshift(l), (l = bZ(a, c, d, e, l, g))));
    (k || !l) && !g["*"] && (l = bZ(a, c, d, e, "*", g));
    return l;
  }
  function bY(a) {
    return function (b, c) {
      typeof b != "string" && ((c = b), (b = "*"));
      if (f.isFunction(c)) {
        var d = b.toLowerCase().split(bO),
          e = 0,
          g = d.length,
          h,
          i,
          j;
        for (; e < g; e++)
          (h = d[e]),
            (j = /^\+/.test(h)),
            j && (h = h.substr(1) || "*"),
            (i = a[h] = a[h] || []),
            i[j ? "unshift" : "push"](c);
      }
    };
  }
  function bB(a, b, c) {
    var d = b === "width" ? a.offsetWidth : a.offsetHeight,
      e = b === "width" ? 1 : 0,
      g = 4;
    if (d > 0) {
      if (c !== "border")
        for (; e < g; e += 2)
          c || (d -= parseFloat(f.css(a, "padding" + bx[e])) || 0),
            c === "margin"
              ? (d += parseFloat(f.css(a, c + bx[e])) || 0)
              : (d -= parseFloat(f.css(a, "border" + bx[e] + "Width")) || 0);
      return d + "px";
    }
    d = by(a, b);
    if (d < 0 || d == null) d = a.style[b];
    if (bt.test(d)) return d;
    d = parseFloat(d) || 0;
    if (c)
      for (; e < g; e += 2)
        (d += parseFloat(f.css(a, "padding" + bx[e])) || 0),
          c !== "padding" &&
            (d += parseFloat(f.css(a, "border" + bx[e] + "Width")) || 0),
          c === "margin" && (d += parseFloat(f.css(a, c + bx[e])) || 0);
    return d + "px";
  }
  function bo(a) {
    var b = c.createElement("div");
    bh.appendChild(b), (b.innerHTML = a.outerHTML);
    return b.firstChild;
  }
  function bn(a) {
    var b = (a.nodeName || "").toLowerCase();
    b === "input"
      ? bm(a)
      : b !== "script" &&
        typeof a.getElementsByTagName != "undefined" &&
        f.grep(a.getElementsByTagName("input"), bm);
  }
  function bm(a) {
    if (a.type === "checkbox" || a.type === "radio")
      a.defaultChecked = a.checked;
  }
  function bl(a) {
    return typeof a.getElementsByTagName != "undefined"
      ? a.getElementsByTagName("*")
      : typeof a.querySelectorAll != "undefined"
      ? a.querySelectorAll("*")
      : [];
  }
  function bk(a, b) {
    var c;
    b.nodeType === 1 &&
      (b.clearAttributes && b.clearAttributes(),
      b.mergeAttributes && b.mergeAttributes(a),
      (c = b.nodeName.toLowerCase()),
      c === "object"
        ? (b.outerHTML = a.outerHTML)
        : c !== "input" || (a.type !== "checkbox" && a.type !== "radio")
        ? c === "option"
          ? (b.selected = a.defaultSelected)
          : c === "input" || c === "textarea"
          ? (b.defaultValue = a.defaultValue)
          : c === "script" && b.text !== a.text && (b.text = a.text)
        : (a.checked && (b.defaultChecked = b.checked = a.checked),
          b.value !== a.value && (b.value = a.value)),
      b.removeAttribute(f.expando),
      b.removeAttribute("_submit_attached"),
      b.removeAttribute("_change_attached"));
  }
  function bj(a, b) {
    if (b.nodeType === 1 && !!f.hasData(a)) {
      var c,
        d,
        e,
        g = f._data(a),
        h = f._data(b, g),
        i = g.events;
      if (i) {
        delete h.handle, (h.events = {});
        for (c in i)
          for (d = 0, e = i[c].length; d < e; d++) f.event.add(b, c, i[c][d]);
      }
      h.data && (h.data = f.extend({}, h.data));
    }
  }
  function bi(a, b) {
    return f.nodeName(a, "table")
      ? a.getElementsByTagName("tbody")[0] ||
          a.appendChild(a.ownerDocument.createElement("tbody"))
      : a;
  }
  function U(a) {
    var b = V.split("|"),
      c = a.createDocumentFragment();
    if (c.createElement) while (b.length) c.createElement(b.pop());
    return c;
  }
  function T(a, b, c) {
    b = b || 0;
    if (f.isFunction(b))
      return f.grep(a, function (a, d) {
        var e = !!b.call(a, d, a);
        return e === c;
      });
    if (b.nodeType)
      return f.grep(a, function (a, d) {
        return (a === b) === c;
      });
    if (typeof b == "string") {
      var d = f.grep(a, function (a) {
        return a.nodeType === 1;
      });
      if (O.test(b)) return f.filter(b, d, !c);
      b = f.filter(b, d);
    }
    return f.grep(a, function (a, d) {
      return f.inArray(a, b) >= 0 === c;
    });
  }
  function S(a) {
    return !a || !a.parentNode || a.parentNode.nodeType === 11;
  }
  function K() {
    return !0;
  }
  function J() {
    return !1;
  }
  function n(a, b, c) {
    var d = b + "defer",
      e = b + "queue",
      g = b + "mark",
      h = f._data(a, d);
    h &&
      (c === "queue" || !f._data(a, e)) &&
      (c === "mark" || !f._data(a, g)) &&
      setTimeout(function () {
        !f._data(a, e) && !f._data(a, g) && (f.removeData(a, d, !0), h.fire());
      }, 0);
  }
  function m(a) {
    for (var b in a) {
      if (b === "data" && f.isEmptyObject(a[b])) continue;
      if (b !== "toJSON") return !1;
    }
    return !0;
  }
  function l(a, c, d) {
    if (d === b && a.nodeType === 1) {
      var e = "data-" + c.replace(k, "-$1").toLowerCase();
      d = a.getAttribute(e);
      if (typeof d == "string") {
        try {
          d =
            d === "true"
              ? !0
              : d === "false"
              ? !1
              : d === "null"
              ? null
              : f.isNumeric(d)
              ? +d
              : j.test(d)
              ? f.parseJSON(d)
              : d;
        } catch (g) {}
        f.data(a, c, d);
      } else d = b;
    }
    return d;
  }
  function h(a) {
    var b = (g[a] = {}),
      c,
      d;
    a = a.split(/\s+/);
    for (c = 0, d = a.length; c < d; c++) b[a[c]] = !0;
    return b;
  }
  var c = a.document,
    d = a.navigator,
    e = a.location,
    f = (function () {
      function J() {
        if (!e.isReady) {
          try {
            c.documentElement.doScroll("left");
          } catch (a) {
            setTimeout(J, 1);
            return;
          }
          e.ready();
        }
      }
      var e = function (a, b) {
          return new e.fn.init(a, b, h);
        },
        f = a.jQuery,
        g = a.$,
        h,
        i = /^(?:[^#<]*(<[\w\W]+>)[^>]*$|#([\w\-]*)$)/,
        j = /\S/,
        k = /^\s+/,
        l = /\s+$/,
        m = /^<(\w+)\s*\/?>(?:<\/\1>)?$/,
        n = /^[\],:{}\s]*$/,
        o = /\\(?:["\\\/bfnrt]|u[0-9a-fA-F]{4})/g,
        p = /"[^"\\\n\r]*"|true|false|null|-?\d+(?:\.\d*)?(?:[eE][+\-]?\d+)?/g,
        q = /(?:^|:|,)(?:\s*\[)+/g,
        r = /(webkit)[ \/]([\w.]+)/,
        s = /(opera)(?:.*version)?[ \/]([\w.]+)/,
        t = /(msie) ([\w.]+)/,
        u = /(mozilla)(?:.*? rv:([\w.]+))?/,
        v = /-([a-z]|[0-9])/gi,
        w = /^-ms-/,
        x = function (a, b) {
          return (b + "").toUpperCase();
        },
        y = d.userAgent,
        z,
        A,
        B,
        C = Object.prototype.toString,
        D = Object.prototype.hasOwnProperty,
        E = Array.prototype.push,
        F = Array.prototype.slice,
        G = String.prototype.trim,
        H = Array.prototype.indexOf,
        I = {};
      (e.fn = e.prototype = {
        constructor: e,
        init: function (a, d, f) {
          var g, h, j, k;
          if (!a) return this;
          if (a.nodeType) {
            (this.context = this[0] = a), (this.length = 1);
            return this;
          }
          if (a === "body" && !d && c.body) {
            (this.context = c),
              (this[0] = c.body),
              (this.selector = a),
              (this.length = 1);
            return this;
          }
          if (typeof a == "string") {
            a.charAt(0) !== "<" ||
            a.charAt(a.length - 1) !== ">" ||
            a.length < 3
              ? (g = i.exec(a))
              : (g = [null, a, null]);
            if (g && (g[1] || !d)) {
              if (g[1]) {
                (d = d instanceof e ? d[0] : d),
                  (k = d ? d.ownerDocument || d : c),
                  (j = m.exec(a)),
                  j
                    ? e.isPlainObject(d)
                      ? ((a = [c.createElement(j[1])]),
                        e.fn.attr.call(a, d, !0))
                      : (a = [k.createElement(j[1])])
                    : ((j = e.buildFragment([g[1]], [k])),
                      (a = (j.cacheable ? e.clone(j.fragment) : j.fragment)
                        .childNodes));
                return e.merge(this, a);
              }
              h = c.getElementById(g[2]);
              if (h && h.parentNode) {
                if (h.id !== g[2]) return f.find(a);
                (this.length = 1), (this[0] = h);
              }
              (this.context = c), (this.selector = a);
              return this;
            }
            return !d || d.jquery
              ? (d || f).find(a)
              : this.constructor(d).find(a);
          }
          if (e.isFunction(a)) return f.ready(a);
          a.selector !== b &&
            ((this.selector = a.selector), (this.context = a.context));
          return e.makeArray(a, this);
        },
        selector: "",
        jquery: "1.7.2",
        length: 0,
        size: function () {
          return this.length;
        },
        toArray: function () {
          return F.call(this, 0);
        },
        get: function (a) {
          return a == null
            ? this.toArray()
            : a < 0
            ? this[this.length + a]
            : this[a];
        },
        pushStack: function (a, b, c) {
          var d = this.constructor();
          e.isArray(a) ? E.apply(d, a) : e.merge(d, a),
            (d.prevObject = this),
            (d.context = this.context),
            b === "find"
              ? (d.selector = this.selector + (this.selector ? " " : "") + c)
              : b && (d.selector = this.selector + "." + b + "(" + c + ")");
          return d;
        },
        each: function (a, b) {
          return e.each(this, a, b);
        },
        ready: function (a) {
          e.bindReady(), A.add(a);
          return this;
        },
        eq: function (a) {
          a = +a;
          return a === -1 ? this.slice(a) : this.slice(a, a + 1);
        },
        first: function () {
          return this.eq(0);
        },
        last: function () {
          return this.eq(-1);
        },
        slice: function () {
          return this.pushStack(
            F.apply(this, arguments),
            "slice",
            F.call(arguments).join(",")
          );
        },
        map: function (a) {
          return this.pushStack(
            e.map(this, function (b, c) {
              return a.call(b, c, b);
            })
          );
        },
        end: function () {
          return this.prevObject || this.constructor(null);
        },
        push: E,
        sort: [].sort,
        splice: [].splice,
      }),
        (e.fn.init.prototype = e.fn),
        (e.extend = e.fn.extend = function () {
          var a,
            c,
            d,
            f,
            g,
            h,
            i = arguments[0] || {},
            j = 1,
            k = arguments.length,
            l = !1;
          typeof i == "boolean" && ((l = i), (i = arguments[1] || {}), (j = 2)),
            typeof i != "object" && !e.isFunction(i) && (i = {}),
            k === j && ((i = this), --j);
          for (; j < k; j++)
            if ((a = arguments[j]) != null)
              for (c in a) {
                (d = i[c]), (f = a[c]);
                if (i === f) continue;
                l && f && (e.isPlainObject(f) || (g = e.isArray(f)))
                  ? (g
                      ? ((g = !1), (h = d && e.isArray(d) ? d : []))
                      : (h = d && e.isPlainObject(d) ? d : {}),
                    (i[c] = e.extend(l, h, f)))
                  : f !== b && (i[c] = f);
              }
          return i;
        }),
        e.extend({
          noConflict: function (b) {
            a.$ === e && (a.$ = g), b && a.jQuery === e && (a.jQuery = f);
            return e;
          },
          isReady: !1,
          readyWait: 1,
          holdReady: function (a) {
            a ? e.readyWait++ : e.ready(!0);
          },
          ready: function (a) {
            if ((a === !0 && !--e.readyWait) || (a !== !0 && !e.isReady)) {
              if (!c.body) return setTimeout(e.ready, 1);
              e.isReady = !0;
              if (a !== !0 && --e.readyWait > 0) return;
              A.fireWith(c, [e]),
                e.fn.trigger && e(c).trigger("ready").off("ready");
            }
          },
          bindReady: function () {
            if (!A) {
              A = e.Callbacks("once memory");
              if (c.readyState === "complete") return setTimeout(e.ready, 1);
              if (c.addEventListener)
                c.addEventListener("DOMContentLoaded", B, !1),
                  a.addEventListener("load", e.ready, !1);
              else if (c.attachEvent) {
                c.attachEvent("onreadystatechange", B),
                  a.attachEvent("onload", e.ready);
                var b = !1;
                try {
                  b = a.frameElement == null;
                } catch (d) {}
                c.documentElement.doScroll && b && J();
              }
            }
          },
          isFunction: function (a) {
            return e.type(a) === "function";
          },
          isArray:
            Array.isArray ||
            function (a) {
              return e.type(a) === "array";
            },
          isWindow: function (a) {
            return a != null && a == a.window;
          },
          isNumeric: function (a) {
            return !isNaN(parseFloat(a)) && isFinite(a);
          },
          type: function (a) {
            return a == null ? String(a) : I[C.call(a)] || "object";
          },
          isPlainObject: function (a) {
            if (!a || e.type(a) !== "object" || a.nodeType || e.isWindow(a))
              return !1;
            try {
              if (
                a.constructor &&
                !D.call(a, "constructor") &&
                !D.call(a.constructor.prototype, "isPrototypeOf")
              )
                return !1;
            } catch (c) {
              return !1;
            }
            var d;
            for (d in a);
            return d === b || D.call(a, d);
          },
          isEmptyObject: function (a) {
            for (var b in a) return !1;
            return !0;
          },
          error: function (a) {
            throw new Error(a);
          },
          parseJSON: function (b) {
            if (typeof b != "string" || !b) return null;
            b = e.trim(b);
            if (a.JSON && a.JSON.parse) return a.JSON.parse(b);
            if (n.test(b.replace(o, "@").replace(p, "]").replace(q, "")))
              return new Function("return " + b)();
            e.error("Invalid JSON: " + b);
          },
          parseXML: function (c) {
            if (typeof c != "string" || !c) return null;
            var d, f;
            try {
              a.DOMParser
                ? ((f = new DOMParser()),
                  (d = f.parseFromString(c, "text/xml")))
                : ((d = new ActiveXObject("Microsoft.XMLDOM")),
                  (d.async = "false"),
                  d.loadXML(c));
            } catch (g) {
              d = b;
            }
            (!d ||
              !d.documentElement ||
              d.getElementsByTagName("parsererror").length) &&
              e.error("Invalid XML: " + c);
            return d;
          },
          noop: function () {},
          globalEval: function (b) {
            b &&
              j.test(b) &&
              (
                a.execScript ||
                function (b) {
                  a.eval.call(a, b);
                }
              )(b);
          },
          camelCase: function (a) {
            return a.replace(w, "ms-").replace(v, x);
          },
          nodeName: function (a, b) {
            return a.nodeName && a.nodeName.toUpperCase() === b.toUpperCase();
          },
          each: function (a, c, d) {
            var f,
              g = 0,
              h = a.length,
              i = h === b || e.isFunction(a);
            if (d) {
              if (i) {
                for (f in a) if (c.apply(a[f], d) === !1) break;
              } else for (; g < h; ) if (c.apply(a[g++], d) === !1) break;
            } else if (i) {
              for (f in a) if (c.call(a[f], f, a[f]) === !1) break;
            } else for (; g < h; ) if (c.call(a[g], g, a[g++]) === !1) break;
            return a;
          },
          trim: G
            ? function (a) {
                return a == null ? "" : G.call(a);
              }
            : function (a) {
                return a == null ? "" : (a + "").replace(k, "").replace(l, "");
              },
          makeArray: function (a, b) {
            var c = b || [];
            if (a != null) {
              var d = e.type(a);
              a.length == null ||
              d === "string" ||
              d === "function" ||
              d === "regexp" ||
              e.isWindow(a)
                ? E.call(c, a)
                : e.merge(c, a);
            }
            return c;
          },
          inArray: function (a, b, c) {
            var d;
            if (b) {
              if (H) return H.call(b, a, c);
              (d = b.length), (c = c ? (c < 0 ? Math.max(0, d + c) : c) : 0);
              for (; c < d; c++) if (c in b && b[c] === a) return c;
            }
            return -1;
          },
          merge: function (a, c) {
            var d = a.length,
              e = 0;
            if (typeof c.length == "number")
              for (var f = c.length; e < f; e++) a[d++] = c[e];
            else while (c[e] !== b) a[d++] = c[e++];
            a.length = d;
            return a;
          },
          grep: function (a, b, c) {
            var d = [],
              e;
            c = !!c;
            for (var f = 0, g = a.length; f < g; f++)
              (e = !!b(a[f], f)), c !== e && d.push(a[f]);
            return d;
          },
          map: function (a, c, d) {
            var f,
              g,
              h = [],
              i = 0,
              j = a.length,
              k =
                a instanceof e ||
                (j !== b &&
                  typeof j == "number" &&
                  ((j > 0 && a[0] && a[j - 1]) || j === 0 || e.isArray(a)));
            if (k)
              for (; i < j; i++)
                (f = c(a[i], i, d)), f != null && (h[h.length] = f);
            else
              for (g in a) (f = c(a[g], g, d)), f != null && (h[h.length] = f);
            return h.concat.apply([], h);
          },
          guid: 1,
          proxy: function (a, c) {
            if (typeof c == "string") {
              var d = a[c];
              (c = a), (a = d);
            }
            if (!e.isFunction(a)) return b;
            var f = F.call(arguments, 2),
              g = function () {
                return a.apply(c, f.concat(F.call(arguments)));
              };
            g.guid = a.guid = a.guid || g.guid || e.guid++;
            return g;
          },
          access: function (a, c, d, f, g, h, i) {
            var j,
              k = d == null,
              l = 0,
              m = a.length;
            if (d && typeof d == "object") {
              for (l in d) e.access(a, c, l, d[l], 1, h, f);
              g = 1;
            } else if (f !== b) {
              (j = i === b && e.isFunction(f)),
                k &&
                  (j
                    ? ((j = c),
                      (c = function (a, b, c) {
                        return j.call(e(a), c);
                      }))
                    : (c.call(a, f), (c = null)));
              if (c)
                for (; l < m; l++)
                  c(a[l], d, j ? f.call(a[l], l, c(a[l], d)) : f, i);
              g = 1;
            }
            return g ? a : k ? c.call(a) : m ? c(a[0], d) : h;
          },
          now: function () {
            return new Date().getTime();
          },
          uaMatch: function (a) {
            a = a.toLowerCase();
            var b =
              r.exec(a) ||
              s.exec(a) ||
              t.exec(a) ||
              (a.indexOf("compatible") < 0 && u.exec(a)) ||
              [];
            return { browser: b[1] || "", version: b[2] || "0" };
          },
          sub: function () {
            function a(b, c) {
              return new a.fn.init(b, c);
            }
            e.extend(!0, a, this),
              (a.superclass = this),
              (a.fn = a.prototype = this()),
              (a.fn.constructor = a),
              (a.sub = this.sub),
              (a.fn.init = function (d, f) {
                f && f instanceof e && !(f instanceof a) && (f = a(f));
                return e.fn.init.call(this, d, f, b);
              }),
              (a.fn.init.prototype = a.fn);
            var b = a(c);
            return a;
          },
          browser: {},
        }),
        e.each(
          "Boolean Number String Function Array Date RegExp Object".split(" "),
          function (a, b) {
            I["[object " + b + "]"] = b.toLowerCase();
          }
        ),
        (z = e.uaMatch(y)),
        z.browser &&
          ((e.browser[z.browser] = !0), (e.browser.version = z.version)),
        e.browser.webkit && (e.browser.safari = !0),
        j.test(" ") && ((k = /^[\s\xA0]+/), (l = /[\s\xA0]+$/)),
        (h = e(c)),
        c.addEventListener
          ? (B = function () {
              c.removeEventListener("DOMContentLoaded", B, !1), e.ready();
            })
          : c.attachEvent &&
            (B = function () {
              c.readyState === "complete" &&
                (c.detachEvent("onreadystatechange", B), e.ready());
            });
      return e;
    })(),
    g = {};
  f.Callbacks = function (a) {
    a = a ? g[a] || h(a) : {};
    var c = [],
      d = [],
      e,
      i,
      j,
      k,
      l,
      m,
      n = function (b) {
        var d, e, g, h, i;
        for (d = 0, e = b.length; d < e; d++)
          (g = b[d]),
            (h = f.type(g)),
            h === "array"
              ? n(g)
              : h === "function" && (!a.unique || !p.has(g)) && c.push(g);
      },
      o = function (b, f) {
        (f = f || []),
          (e = !a.memory || [b, f]),
          (i = !0),
          (j = !0),
          (m = k || 0),
          (k = 0),
          (l = c.length);
        for (; c && m < l; m++)
          if (c[m].apply(b, f) === !1 && a.stopOnFalse) {
            e = !0;
            break;
          }
        (j = !1),
          c &&
            (a.once
              ? e === !0
                ? p.disable()
                : (c = [])
              : d && d.length && ((e = d.shift()), p.fireWith(e[0], e[1])));
      },
      p = {
        add: function () {
          if (c) {
            var a = c.length;
            n(arguments),
              j ? (l = c.length) : e && e !== !0 && ((k = a), o(e[0], e[1]));
          }
          return this;
        },
        remove: function () {
          if (c) {
            var b = arguments,
              d = 0,
              e = b.length;
            for (; d < e; d++)
              for (var f = 0; f < c.length; f++)
                if (b[d] === c[f]) {
                  j && f <= l && (l--, f <= m && m--), c.splice(f--, 1);
                  if (a.unique) break;
                }
          }
          return this;
        },
        has: function (a) {
          if (c) {
            var b = 0,
              d = c.length;
            for (; b < d; b++) if (a === c[b]) return !0;
          }
          return !1;
        },
        empty: function () {
          c = [];
          return this;
        },
        disable: function () {
          c = d = e = b;
          return this;
        },
        disabled: function () {
          return !c;
        },
        lock: function () {
          (d = b), (!e || e === !0) && p.disable();
          return this;
        },
        locked: function () {
          return !d;
        },
        fireWith: function (b, c) {
          d && (j ? a.once || d.push([b, c]) : (!a.once || !e) && o(b, c));
          return this;
        },
        fire: function () {
          p.fireWith(this, arguments);
          return this;
        },
        fired: function () {
          return !!i;
        },
      };
    return p;
  };
  var i = [].slice;
  f.extend({
    Deferred: function (a) {
      var b = f.Callbacks("once memory"),
        c = f.Callbacks("once memory"),
        d = f.Callbacks("memory"),
        e = "pending",
        g = { resolve: b, reject: c, notify: d },
        h = {
          done: b.add,
          fail: c.add,
          progress: d.add,
          state: function () {
            return e;
          },
          isResolved: b.fired,
          isRejected: c.fired,
          then: function (a, b, c) {
            i.done(a).fail(b).progress(c);
            return this;
          },
          always: function () {
            i.done.apply(i, arguments).fail.apply(i, arguments);
            return this;
          },
          pipe: function (a, b, c) {
            return f
              .Deferred(function (d) {
                f.each(
                  {
                    done: [a, "resolve"],
                    fail: [b, "reject"],
                    progress: [c, "notify"],
                  },
                  function (a, b) {
                    var c = b[0],
                      e = b[1],
                      g;
                    f.isFunction(c)
                      ? i[a](function () {
                          (g = c.apply(this, arguments)),
                            g && f.isFunction(g.promise)
                              ? g.promise().then(d.resolve, d.reject, d.notify)
                              : d[e + "With"](this === i ? d : this, [g]);
                        })
                      : i[a](d[e]);
                  }
                );
              })
              .promise();
          },
          promise: function (a) {
            if (a == null) a = h;
            else for (var b in h) a[b] = h[b];
            return a;
          },
        },
        i = h.promise({}),
        j;
      for (j in g) (i[j] = g[j].fire), (i[j + "With"] = g[j].fireWith);
      i
        .done(
          function () {
            e = "resolved";
          },
          c.disable,
          d.lock
        )
        .fail(
          function () {
            e = "rejected";
          },
          b.disable,
          d.lock
        ),
        a && a.call(i, i);
      return i;
    },
    when: function (a) {
      function m(a) {
        return function (b) {
          (e[a] = arguments.length > 1 ? i.call(arguments, 0) : b),
            j.notifyWith(k, e);
        };
      }
      function l(a) {
        return function (c) {
          (b[a] = arguments.length > 1 ? i.call(arguments, 0) : c),
            --g || j.resolveWith(j, b);
        };
      }
      var b = i.call(arguments, 0),
        c = 0,
        d = b.length,
        e = Array(d),
        g = d,
        h = d,
        j = d <= 1 && a && f.isFunction(a.promise) ? a : f.Deferred(),
        k = j.promise();
      if (d > 1) {
        for (; c < d; c++)
          b[c] && b[c].promise && f.isFunction(b[c].promise)
            ? b[c].promise().then(l(c), j.reject, m(c))
            : --g;
        g || j.resolveWith(j, b);
      } else j !== a && j.resolveWith(j, d ? [a] : []);
      return k;
    },
  }),
    (f.support = (function () {
      var b,
        d,
        e,
        g,
        h,
        i,
        j,
        k,
        l,
        m,
        n,
        o,
        p = c.createElement("div"),
        q = c.documentElement;
      p.setAttribute("className", "t"),
        (p.innerHTML =
          "   <link/><table></table><a href='/a' style='top:1px;float:left;opacity:.55;'>a</a><input type='checkbox'/>"),
        (d = p.getElementsByTagName("*")),
        (e = p.getElementsByTagName("a")[0]);
      if (!d || !d.length || !e) return {};
      (g = c.createElement("select")),
        (h = g.appendChild(c.createElement("option"))),
        (i = p.getElementsByTagName("input")[0]),
        (b = {
          leadingWhitespace: p.firstChild.nodeType === 3,
          tbody: !p.getElementsByTagName("tbody").length,
          htmlSerialize: !!p.getElementsByTagName("link").length,
          style: /top/.test(e.getAttribute("style")),
          hrefNormalized: e.getAttribute("href") === "/a",
          opacity: /^0.55/.test(e.style.opacity),
          cssFloat: !!e.style.cssFloat,
          checkOn: i.value === "on",
          optSelected: h.selected,
          getSetAttribute: p.className !== "t",
          enctype: !!c.createElement("form").enctype,
          html5Clone:
            c.createElement("nav").cloneNode(!0).outerHTML !== "<:nav></:nav>",
          submitBubbles: !0,
          changeBubbles: !0,
          focusinBubbles: !1,
          deleteExpando: !0,
          noCloneEvent: !0,
          inlineBlockNeedsLayout: !1,
          shrinkWrapBlocks: !1,
          reliableMarginRight: !0,
          pixelMargin: !0,
        }),
        (f.boxModel = b.boxModel = c.compatMode === "CSS1Compat"),
        (i.checked = !0),
        (b.noCloneChecked = i.cloneNode(!0).checked),
        (g.disabled = !0),
        (b.optDisabled = !h.disabled);
      try {
        delete p.test;
      } catch (r) {
        b.deleteExpando = !1;
      }
      !p.addEventListener &&
        p.attachEvent &&
        p.fireEvent &&
        (p.attachEvent("onclick", function () {
          b.noCloneEvent = !1;
        }),
        p.cloneNode(!0).fireEvent("onclick")),
        (i = c.createElement("input")),
        (i.value = "t"),
        i.setAttribute("type", "radio"),
        (b.radioValue = i.value === "t"),
        i.setAttribute("checked", "checked"),
        i.setAttribute("name", "t"),
        p.appendChild(i),
        (j = c.createDocumentFragment()),
        j.appendChild(p.lastChild),
        (b.checkClone = j.cloneNode(!0).cloneNode(!0).lastChild.checked),
        (b.appendChecked = i.checked),
        j.removeChild(i),
        j.appendChild(p);
      if (p.attachEvent)
        for (n in { submit: 1, change: 1, focusin: 1 })
          (m = "on" + n),
            (o = m in p),
            o ||
              (p.setAttribute(m, "return;"), (o = typeof p[m] == "function")),
            (b[n + "Bubbles"] = o);
      j.removeChild(p),
        (j = g = h = p = i = null),
        f(function () {
          var d,
            e,
            g,
            h,
            i,
            j,
            l,
            m,
            n,
            q,
            r,
            s,
            t,
            u = c.getElementsByTagName("body")[0];
          !u ||
            ((m = 1),
            (t = "padding:0;margin:0;border:"),
            (r = "position:absolute;top:0;left:0;width:1px;height:1px;"),
            (s = t + "0;visibility:hidden;"),
            (n = "style='" + r + t + "5px solid #000;"),
            (q =
              "<div " +
              n +
              "display:block;'><div style='" +
              t +
              "0;display:block;overflow:hidden;'></div></div>" +
              "<table " +
              n +
              "' cellpadding='0' cellspacing='0'>" +
              "<tr><td></td></tr></table>"),
            (d = c.createElement("div")),
            (d.style.cssText =
              s +
              "width:0;height:0;position:static;top:0;margin-top:" +
              m +
              "px"),
            u.insertBefore(d, u.firstChild),
            (p = c.createElement("div")),
            d.appendChild(p),
            (p.innerHTML =
              "<table><tr><td style='" +
              t +
              "0;display:none'></td><td>t</td></tr></table>"),
            (k = p.getElementsByTagName("td")),
            (o = k[0].offsetHeight === 0),
            (k[0].style.display = ""),
            (k[1].style.display = "none"),
            (b.reliableHiddenOffsets = o && k[0].offsetHeight === 0),
            a.getComputedStyle &&
              ((p.innerHTML = ""),
              (l = c.createElement("div")),
              (l.style.width = "0"),
              (l.style.marginRight = "0"),
              (p.style.width = "2px"),
              p.appendChild(l),
              (b.reliableMarginRight =
                (parseInt(
                  (a.getComputedStyle(l, null) || { marginRight: 0 })
                    .marginRight,
                  10
                ) || 0) === 0)),
            typeof p.style.zoom != "undefined" &&
              ((p.innerHTML = ""),
              (p.style.width = p.style.padding = "1px"),
              (p.style.border = 0),
              (p.style.overflow = "hidden"),
              (p.style.display = "inline"),
              (p.style.zoom = 1),
              (b.inlineBlockNeedsLayout = p.offsetWidth === 3),
              (p.style.display = "block"),
              (p.style.overflow = "visible"),
              (p.innerHTML = "<div style='width:5px;'></div>"),
              (b.shrinkWrapBlocks = p.offsetWidth !== 3)),
            (p.style.cssText = r + s),
            (p.innerHTML = q),
            (e = p.firstChild),
            (g = e.firstChild),
            (i = e.nextSibling.firstChild.firstChild),
            (j = {
              doesNotAddBorder: g.offsetTop !== 5,
              doesAddBorderForTableAndCells: i.offsetTop === 5,
            }),
            (g.style.position = "fixed"),
            (g.style.top = "20px"),
            (j.fixedPosition = g.offsetTop === 20 || g.offsetTop === 15),
            (g.style.position = g.style.top = ""),
            (e.style.overflow = "hidden"),
            (e.style.position = "relative"),
            (j.subtractsBorderForOverflowNotVisible = g.offsetTop === -5),
            (j.doesNotIncludeMarginInBodyOffset = u.offsetTop !== m),
            a.getComputedStyle &&
              ((p.style.marginTop = "1%"),
              (b.pixelMargin =
                (a.getComputedStyle(p, null) || { marginTop: 0 }).marginTop !==
                "1%")),
            typeof d.style.zoom != "undefined" && (d.style.zoom = 1),
            u.removeChild(d),
            (l = p = d = null),
            f.extend(b, j));
        });
      return b;
    })());
  var j = /^(?:\{.*\}|\[.*\])$/,
    k = /([A-Z])/g;
  f.extend({
    cache: {},
    uuid: 0,
    expando: "jQuery" + (f.fn.jquery + Math.random()).replace(/\D/g, ""),
    noData: {
      embed: !0,
      object: "clsid:D27CDB6E-AE6D-11cf-96B8-444553540000",
      applet: !0,
    },
    hasData: function (a) {
      a = a.nodeType ? f.cache[a[f.expando]] : a[f.expando];
      return !!a && !m(a);
    },
    data: function (a, c, d, e) {
      if (!!f.acceptData(a)) {
        var g,
          h,
          i,
          j = f.expando,
          k = typeof c == "string",
          l = a.nodeType,
          m = l ? f.cache : a,
          n = l ? a[j] : a[j] && j,
          o = c === "events";
        if ((!n || !m[n] || (!o && !e && !m[n].data)) && k && d === b) return;
        n || (l ? (a[j] = n = ++f.uuid) : (n = j)),
          m[n] || ((m[n] = {}), l || (m[n].toJSON = f.noop));
        if (typeof c == "object" || typeof c == "function")
          e ? (m[n] = f.extend(m[n], c)) : (m[n].data = f.extend(m[n].data, c));
        (g = h = m[n]),
          e || (h.data || (h.data = {}), (h = h.data)),
          d !== b && (h[f.camelCase(c)] = d);
        if (o && !h[c]) return g.events;
        k ? ((i = h[c]), i == null && (i = h[f.camelCase(c)])) : (i = h);
        return i;
      }
    },
    removeData: function (a, b, c) {
      if (!!f.acceptData(a)) {
        var d,
          e,
          g,
          h = f.expando,
          i = a.nodeType,
          j = i ? f.cache : a,
          k = i ? a[h] : h;
        if (!j[k]) return;
        if (b) {
          d = c ? j[k] : j[k].data;
          if (d) {
            f.isArray(b) ||
              (b in d
                ? (b = [b])
                : ((b = f.camelCase(b)),
                  b in d ? (b = [b]) : (b = b.split(" "))));
            for (e = 0, g = b.length; e < g; e++) delete d[b[e]];
            if (!(c ? m : f.isEmptyObject)(d)) return;
          }
        }
        if (!c) {
          delete j[k].data;
          if (!m(j[k])) return;
        }
        f.support.deleteExpando || !j.setInterval ? delete j[k] : (j[k] = null),
          i &&
            (f.support.deleteExpando
              ? delete a[h]
              : a.removeAttribute
              ? a.removeAttribute(h)
              : (a[h] = null));
      }
    },
    _data: function (a, b, c) {
      return f.data(a, b, c, !0);
    },
    acceptData: function (a) {
      if (a.nodeName) {
        var b = f.noData[a.nodeName.toLowerCase()];
        if (b) return b !== !0 && a.getAttribute("classid") === b;
      }
      return !0;
    },
  }),
    f.fn.extend({
      data: function (a, c) {
        var d,
          e,
          g,
          h,
          i,
          j = this[0],
          k = 0,
          m = null;
        if (a === b) {
          if (this.length) {
            m = f.data(j);
            if (j.nodeType === 1 && !f._data(j, "parsedAttrs")) {
              g = j.attributes;
              for (i = g.length; k < i; k++)
                (h = g[k].name),
                  h.indexOf("data-") === 0 &&
                    ((h = f.camelCase(h.substring(5))), l(j, h, m[h]));
              f._data(j, "parsedAttrs", !0);
            }
          }
          return m;
        }
        if (typeof a == "object")
          return this.each(function () {
            f.data(this, a);
          });
        (d = a.split(".", 2)),
          (d[1] = d[1] ? "." + d[1] : ""),
          (e = d[1] + "!");
        return f.access(
          this,
          function (c) {
            if (c === b) {
              (m = this.triggerHandler("getData" + e, [d[0]])),
                m === b && j && ((m = f.data(j, a)), (m = l(j, a, m)));
              return m === b && d[1] ? this.data(d[0]) : m;
            }
            (d[1] = c),
              this.each(function () {
                var b = f(this);
                b.triggerHandler("setData" + e, d),
                  f.data(this, a, c),
                  b.triggerHandler("changeData" + e, d);
              });
          },
          null,
          c,
          arguments.length > 1,
          null,
          !1
        );
      },
      removeData: function (a) {
        return this.each(function () {
          f.removeData(this, a);
        });
      },
    }),
    f.extend({
      _mark: function (a, b) {
        a &&
          ((b = (b || "fx") + "mark"), f._data(a, b, (f._data(a, b) || 0) + 1));
      },
      _unmark: function (a, b, c) {
        a !== !0 && ((c = b), (b = a), (a = !1));
        if (b) {
          c = c || "fx";
          var d = c + "mark",
            e = a ? 0 : (f._data(b, d) || 1) - 1;
          e ? f._data(b, d, e) : (f.removeData(b, d, !0), n(b, c, "mark"));
        }
      },
      queue: function (a, b, c) {
        var d;
        if (a) {
          (b = (b || "fx") + "queue"),
            (d = f._data(a, b)),
            c &&
              (!d || f.isArray(c)
                ? (d = f._data(a, b, f.makeArray(c)))
                : d.push(c));
          return d || [];
        }
      },
      dequeue: function (a, b) {
        b = b || "fx";
        var c = f.queue(a, b),
          d = c.shift(),
          e = {};
        d === "inprogress" && (d = c.shift()),
          d &&
            (b === "fx" && c.unshift("inprogress"),
            f._data(a, b + ".run", e),
            d.call(
              a,
              function () {
                f.dequeue(a, b);
              },
              e
            )),
          c.length ||
            (f.removeData(a, b + "queue " + b + ".run", !0), n(a, b, "queue"));
      },
    }),
    f.fn.extend({
      queue: function (a, c) {
        var d = 2;
        typeof a != "string" && ((c = a), (a = "fx"), d--);
        if (arguments.length < d) return f.queue(this[0], a);
        return c === b
          ? this
          : this.each(function () {
              var b = f.queue(this, a, c);
              a === "fx" && b[0] !== "inprogress" && f.dequeue(this, a);
            });
      },
      dequeue: function (a) {
        return this.each(function () {
          f.dequeue(this, a);
        });
      },
      delay: function (a, b) {
        (a = f.fx ? f.fx.speeds[a] || a : a), (b = b || "fx");
        return this.queue(b, function (b, c) {
          var d = setTimeout(b, a);
          c.stop = function () {
            clearTimeout(d);
          };
        });
      },
      clearQueue: function (a) {
        return this.queue(a || "fx", []);
      },
      promise: function (a, c) {
        function m() {
          --h || d.resolveWith(e, [e]);
        }
        typeof a != "string" && ((c = a), (a = b)), (a = a || "fx");
        var d = f.Deferred(),
          e = this,
          g = e.length,
          h = 1,
          i = a + "defer",
          j = a + "queue",
          k = a + "mark",
          l;
        while (g--)
          if (
            (l =
              f.data(e[g], i, b, !0) ||
              ((f.data(e[g], j, b, !0) || f.data(e[g], k, b, !0)) &&
                f.data(e[g], i, f.Callbacks("once memory"), !0)))
          )
            h++, l.add(m);
        m();
        return d.promise(c);
      },
    });
  var o = /[\n\t\r]/g,
    p = /\s+/,
    q = /\r/g,
    r = /^(?:button|input)$/i,
    s = /^(?:button|input|object|select|textarea)$/i,
    t = /^a(?:rea)?$/i,
    u = /^(?:autofocus|autoplay|async|checked|controls|defer|disabled|hidden|loop|multiple|open|readonly|required|scoped|selected)$/i,
    v = f.support.getSetAttribute,
    w,
    x,
    y;
  f.fn.extend({
    attr: function (a, b) {
      return f.access(this, f.attr, a, b, arguments.length > 1);
    },
    removeAttr: function (a) {
      return this.each(function () {
        f.removeAttr(this, a);
      });
    },
    prop: function (a, b) {
      return f.access(this, f.prop, a, b, arguments.length > 1);
    },
    removeProp: function (a) {
      a = f.propFix[a] || a;
      return this.each(function () {
        try {
          (this[a] = b), delete this[a];
        } catch (c) {}
      });
    },
    addClass: function (a) {
      var b, c, d, e, g, h, i;
      if (f.isFunction(a))
        return this.each(function (b) {
          f(this).addClass(a.call(this, b, this.className));
        });
      if (a && typeof a == "string") {
        b = a.split(p);
        for (c = 0, d = this.length; c < d; c++) {
          e = this[c];
          if (e.nodeType === 1)
            if (!e.className && b.length === 1) e.className = a;
            else {
              g = " " + e.className + " ";
              for (h = 0, i = b.length; h < i; h++)
                ~g.indexOf(" " + b[h] + " ") || (g += b[h] + " ");
              e.className = f.trim(g);
            }
        }
      }
      return this;
    },
    removeClass: function (a) {
      var c, d, e, g, h, i, j;
      if (f.isFunction(a))
        return this.each(function (b) {
          f(this).removeClass(a.call(this, b, this.className));
        });
      if ((a && typeof a == "string") || a === b) {
        c = (a || "").split(p);
        for (d = 0, e = this.length; d < e; d++) {
          g = this[d];
          if (g.nodeType === 1 && g.className)
            if (a) {
              h = (" " + g.className + " ").replace(o, " ");
              for (i = 0, j = c.length; i < j; i++)
                h = h.replace(" " + c[i] + " ", " ");
              g.className = f.trim(h);
            } else g.className = "";
        }
      }
      return this;
    },
    toggleClass: function (a, b) {
      var c = typeof a,
        d = typeof b == "boolean";
      if (f.isFunction(a))
        return this.each(function (c) {
          f(this).toggleClass(a.call(this, c, this.className, b), b);
        });
      return this.each(function () {
        if (c === "string") {
          var e,
            g = 0,
            h = f(this),
            i = b,
            j = a.split(p);
          while ((e = j[g++]))
            (i = d ? i : !h.hasClass(e)), h[i ? "addClass" : "removeClass"](e);
        } else if (c === "undefined" || c === "boolean") this.className && f._data(this, "__className__", this.className), (this.className = this.className || a === !1 ? "" : f._data(this, "__className__") || "");
      });
    },
    hasClass: function (a) {
      var b = " " + a + " ",
        c = 0,
        d = this.length;
      for (; c < d; c++)
        if (
          this[c].nodeType === 1 &&
          (" " + this[c].className + " ").replace(o, " ").indexOf(b) > -1
        )
          return !0;
      return !1;
    },
    val: function (a) {
      var c,
        d,
        e,
        g = this[0];
      {
        if (!!arguments.length) {
          e = f.isFunction(a);
          return this.each(function (d) {
            var g = f(this),
              h;
            if (this.nodeType === 1) {
              e ? (h = a.call(this, d, g.val())) : (h = a),
                h == null
                  ? (h = "")
                  : typeof h == "number"
                  ? (h += "")
                  : f.isArray(h) &&
                    (h = f.map(h, function (a) {
                      return a == null ? "" : a + "";
                    })),
                (c =
                  f.valHooks[this.type] ||
                  f.valHooks[this.nodeName.toLowerCase()]);
              if (!c || !("set" in c) || c.set(this, h, "value") === b)
                this.value = h;
            }
          });
        }
        if (g) {
          c = f.valHooks[g.type] || f.valHooks[g.nodeName.toLowerCase()];
          if (c && "get" in c && (d = c.get(g, "value")) !== b) return d;
          d = g.value;
          return typeof d == "string" ? d.replace(q, "") : d == null ? "" : d;
        }
      }
    },
  }),
    f.extend({
      valHooks: {
        option: {
          get: function (a) {
            var b = a.attributes.value;
            return !b || b.specified ? a.value : a.text;
          },
        },
        select: {
          get: function (a) {
            var b,
              c,
              d,
              e,
              g = a.selectedIndex,
              h = [],
              i = a.options,
              j = a.type === "select-one";
            if (g < 0) return null;
            (c = j ? g : 0), (d = j ? g + 1 : i.length);
            for (; c < d; c++) {
              e = i[c];
              if (
                e.selected &&
                (f.support.optDisabled
                  ? !e.disabled
                  : e.getAttribute("disabled") === null) &&
                (!e.parentNode.disabled ||
                  !f.nodeName(e.parentNode, "optgroup"))
              ) {
                b = f(e).val();
                if (j) return b;
                h.push(b);
              }
            }
            if (j && !h.length && i.length) return f(i[g]).val();
            return h;
          },
          set: function (a, b) {
            var c = f.makeArray(b);
            f(a)
              .find("option")
              .each(function () {
                this.selected = f.inArray(f(this).val(), c) >= 0;
              }),
              c.length || (a.selectedIndex = -1);
            return c;
          },
        },
      },
      attrFn: {
        val: !0,
        css: !0,
        html: !0,
        text: !0,
        data: !0,
        width: !0,
        height: !0,
        offset: !0,
      },
      attr: function (a, c, d, e) {
        var g,
          h,
          i,
          j = a.nodeType;
        if (!!a && j !== 3 && j !== 8 && j !== 2) {
          if (e && c in f.attrFn) return f(a)[c](d);
          if (typeof a.getAttribute == "undefined") return f.prop(a, c, d);
          (i = j !== 1 || !f.isXMLDoc(a)),
            i &&
              ((c = c.toLowerCase()),
              (h = f.attrHooks[c] || (u.test(c) ? x : w)));
          if (d !== b) {
            if (d === null) {
              f.removeAttr(a, c);
              return;
            }
            if (h && "set" in h && i && (g = h.set(a, d, c)) !== b) return g;
            a.setAttribute(c, "" + d);
            return d;
          }
          if (h && "get" in h && i && (g = h.get(a, c)) !== null) return g;
          g = a.getAttribute(c);
          return g === null ? b : g;
        }
      },
      removeAttr: function (a, b) {
        var c,
          d,
          e,
          g,
          h,
          i = 0;
        if (b && a.nodeType === 1) {
          (d = b.toLowerCase().split(p)), (g = d.length);
          for (; i < g; i++)
            (e = d[i]),
              e &&
                ((c = f.propFix[e] || e),
                (h = u.test(e)),
                h || f.attr(a, e, ""),
                a.removeAttribute(v ? e : c),
                h && c in a && (a[c] = !1));
        }
      },
      attrHooks: {
        type: {
          set: function (a, b) {
            if (r.test(a.nodeName) && a.parentNode)
              f.error("type property can't be changed");
            else if (
              !f.support.radioValue &&
              b === "radio" &&
              f.nodeName(a, "input")
            ) {
              var c = a.value;
              a.setAttribute("type", b), c && (a.value = c);
              return b;
            }
          },
        },
        value: {
          get: function (a, b) {
            if (w && f.nodeName(a, "button")) return w.get(a, b);
            return b in a ? a.value : null;
          },
          set: function (a, b, c) {
            if (w && f.nodeName(a, "button")) return w.set(a, b, c);
            a.value = b;
          },
        },
      },
      propFix: {
        tabindex: "tabIndex",
        readonly: "readOnly",
        for: "htmlFor",
        class: "className",
        maxlength: "maxLength",
        cellspacing: "cellSpacing",
        cellpadding: "cellPadding",
        rowspan: "rowSpan",
        colspan: "colSpan",
        usemap: "useMap",
        frameborder: "frameBorder",
        contenteditable: "contentEditable",
      },
      prop: function (a, c, d) {
        var e,
          g,
          h,
          i = a.nodeType;
        if (!!a && i !== 3 && i !== 8 && i !== 2) {
          (h = i !== 1 || !f.isXMLDoc(a)),
            h && ((c = f.propFix[c] || c), (g = f.propHooks[c]));
          return d !== b
            ? g && "set" in g && (e = g.set(a, d, c)) !== b
              ? e
              : (a[c] = d)
            : g && "get" in g && (e = g.get(a, c)) !== null
            ? e
            : a[c];
        }
      },
      propHooks: {
        tabIndex: {
          get: function (a) {
            var c = a.getAttributeNode("tabindex");
            return c && c.specified
              ? parseInt(c.value, 10)
              : s.test(a.nodeName) || (t.test(a.nodeName) && a.href)
              ? 0
              : b;
          },
        },
      },
    }),
    (f.attrHooks.tabindex = f.propHooks.tabIndex),
    (x = {
      get: function (a, c) {
        var d,
          e = f.prop(a, c);
        return e === !0 ||
          (typeof e != "boolean" &&
            (d = a.getAttributeNode(c)) &&
            d.nodeValue !== !1)
          ? c.toLowerCase()
          : b;
      },
      set: function (a, b, c) {
        var d;
        b === !1
          ? f.removeAttr(a, c)
          : ((d = f.propFix[c] || c),
            d in a && (a[d] = !0),
            a.setAttribute(c, c.toLowerCase()));
        return c;
      },
    }),
    v ||
      ((y = { name: !0, id: !0, coords: !0 }),
      (w = f.valHooks.button = {
        get: function (a, c) {
          var d;
          d = a.getAttributeNode(c);
          return d && (y[c] ? d.nodeValue !== "" : d.specified)
            ? d.nodeValue
            : b;
        },
        set: function (a, b, d) {
          var e = a.getAttributeNode(d);
          e || ((e = c.createAttribute(d)), a.setAttributeNode(e));
          return (e.nodeValue = b + "");
        },
      }),
      (f.attrHooks.tabindex.set = w.set),
      f.each(["width", "height"], function (a, b) {
        f.attrHooks[b] = f.extend(f.attrHooks[b], {
          set: function (a, c) {
            if (c === "") {
              a.setAttribute(b, "auto");
              return c;
            }
          },
        });
      }),
      (f.attrHooks.contenteditable = {
        get: w.get,
        set: function (a, b, c) {
          b === "" && (b = "false"), w.set(a, b, c);
        },
      })),
    f.support.hrefNormalized ||
      f.each(["href", "src", "width", "height"], function (a, c) {
        f.attrHooks[c] = f.extend(f.attrHooks[c], {
          get: function (a) {
            var d = a.getAttribute(c, 2);
            return d === null ? b : d;
          },
        });
      }),
    f.support.style ||
      (f.attrHooks.style = {
        get: function (a) {
          return a.style.cssText.toLowerCase() || b;
        },
        set: function (a, b) {
          return (a.style.cssText = "" + b);
        },
      }),
    f.support.optSelected ||
      (f.propHooks.selected = f.extend(f.propHooks.selected, {
        get: function (a) {
          var b = a.parentNode;
          b && (b.selectedIndex, b.parentNode && b.parentNode.selectedIndex);
          return null;
        },
      })),
    f.support.enctype || (f.propFix.enctype = "encoding"),
    f.support.checkOn ||
      f.each(["radio", "checkbox"], function () {
        f.valHooks[this] = {
          get: function (a) {
            return a.getAttribute("value") === null ? "on" : a.value;
          },
        };
      }),
    f.each(["radio", "checkbox"], function () {
      f.valHooks[this] = f.extend(f.valHooks[this], {
        set: function (a, b) {
          if (f.isArray(b)) return (a.checked = f.inArray(f(a).val(), b) >= 0);
        },
      });
    });
  var z = /^(?:textarea|input|select)$/i,
    A = /^([^\.]*)?(?:\.(.+))?$/,
    B = /(?:^|\s)hover(\.\S+)?\b/,
    C = /^key/,
    D = /^(?:mouse|contextmenu)|click/,
    E = /^(?:focusinfocus|focusoutblur)$/,
    F = /^(\w*)(?:#([\w\-]+))?(?:\.([\w\-]+))?$/,
    G = function (a) {
      var b = F.exec(a);
      b &&
        ((b[1] = (b[1] || "").toLowerCase()),
        (b[3] = b[3] && new RegExp("(?:^|\\s)" + b[3] + "(?:\\s|$)")));
      return b;
    },
    H = function (a, b) {
      var c = a.attributes || {};
      return (
        (!b[1] || a.nodeName.toLowerCase() === b[1]) &&
        (!b[2] || (c.id || {}).value === b[2]) &&
        (!b[3] || b[3].test((c["class"] || {}).value))
      );
    },
    I = function (a) {
      return f.event.special.hover
        ? a
        : a.replace(B, "mouseenter$1 mouseleave$1");
    };
  (f.event = {
    add: function (a, c, d, e, g) {
      var h, i, j, k, l, m, n, o, p, q, r, s;
      if (
        !(a.nodeType === 3 || a.nodeType === 8 || !c || !d || !(h = f._data(a)))
      ) {
        d.handler && ((p = d), (d = p.handler), (g = p.selector)),
          d.guid || (d.guid = f.guid++),
          (j = h.events),
          j || (h.events = j = {}),
          (i = h.handle),
          i ||
            ((h.handle = i = function (a) {
              return typeof f != "undefined" &&
                (!a || f.event.triggered !== a.type)
                ? f.event.dispatch.apply(i.elem, arguments)
                : b;
            }),
            (i.elem = a)),
          (c = f.trim(I(c)).split(" "));
        for (k = 0; k < c.length; k++) {
          (l = A.exec(c[k]) || []),
            (m = l[1]),
            (n = (l[2] || "").split(".").sort()),
            (s = f.event.special[m] || {}),
            (m = (g ? s.delegateType : s.bindType) || m),
            (s = f.event.special[m] || {}),
            (o = f.extend(
              {
                type: m,
                origType: l[1],
                data: e,
                handler: d,
                guid: d.guid,
                selector: g,
                quick: g && G(g),
                namespace: n.join("."),
              },
              p
            )),
            (r = j[m]);
          if (!r) {
            (r = j[m] = []), (r.delegateCount = 0);
            if (!s.setup || s.setup.call(a, e, n, i) === !1)
              a.addEventListener
                ? a.addEventListener(m, i, !1)
                : a.attachEvent && a.attachEvent("on" + m, i);
          }
          s.add &&
            (s.add.call(a, o), o.handler.guid || (o.handler.guid = d.guid)),
            g ? r.splice(r.delegateCount++, 0, o) : r.push(o),
            (f.event.global[m] = !0);
        }
        a = null;
      }
    },
    global: {},
    remove: function (a, b, c, d, e) {
      var g = f.hasData(a) && f._data(a),
        h,
        i,
        j,
        k,
        l,
        m,
        n,
        o,
        p,
        q,
        r,
        s;
      if (!!g && !!(o = g.events)) {
        b = f.trim(I(b || "")).split(" ");
        for (h = 0; h < b.length; h++) {
          (i = A.exec(b[h]) || []), (j = k = i[1]), (l = i[2]);
          if (!j) {
            for (j in o) f.event.remove(a, j + b[h], c, d, !0);
            continue;
          }
          (p = f.event.special[j] || {}),
            (j = (d ? p.delegateType : p.bindType) || j),
            (r = o[j] || []),
            (m = r.length),
            (l = l
              ? new RegExp(
                  "(^|\\.)" +
                    l.split(".").sort().join("\\.(?:.*\\.)?") +
                    "(\\.|$)"
                )
              : null);
          for (n = 0; n < r.length; n++)
            (s = r[n]),
              (e || k === s.origType) &&
                (!c || c.guid === s.guid) &&
                (!l || l.test(s.namespace)) &&
                (!d || d === s.selector || (d === "**" && s.selector)) &&
                (r.splice(n--, 1),
                s.selector && r.delegateCount--,
                p.remove && p.remove.call(a, s));
          r.length === 0 &&
            m !== r.length &&
            ((!p.teardown || p.teardown.call(a, l) === !1) &&
              f.removeEvent(a, j, g.handle),
            delete o[j]);
        }
        f.isEmptyObject(o) &&
          ((q = g.handle),
          q && (q.elem = null),
          f.removeData(a, ["events", "handle"], !0));
      }
    },
    customEvent: { getData: !0, setData: !0, changeData: !0 },
    trigger: function (c, d, e, g) {
      if (!e || (e.nodeType !== 3 && e.nodeType !== 8)) {
        var h = c.type || c,
          i = [],
          j,
          k,
          l,
          m,
          n,
          o,
          p,
          q,
          r,
          s;
        if (E.test(h + f.event.triggered)) return;
        h.indexOf("!") >= 0 && ((h = h.slice(0, -1)), (k = !0)),
          h.indexOf(".") >= 0 &&
            ((i = h.split(".")), (h = i.shift()), i.sort());
        if ((!e || f.event.customEvent[h]) && !f.event.global[h]) return;
        (c =
          typeof c == "object"
            ? c[f.expando]
              ? c
              : new f.Event(h, c)
            : new f.Event(h)),
          (c.type = h),
          (c.isTrigger = !0),
          (c.exclusive = k),
          (c.namespace = i.join(".")),
          (c.namespace_re = c.namespace
            ? new RegExp("(^|\\.)" + i.join("\\.(?:.*\\.)?") + "(\\.|$)")
            : null),
          (o = h.indexOf(":") < 0 ? "on" + h : "");
        if (!e) {
          j = f.cache;
          for (l in j)
            j[l].events &&
              j[l].events[h] &&
              f.event.trigger(c, d, j[l].handle.elem, !0);
          return;
        }
        (c.result = b),
          c.target || (c.target = e),
          (d = d != null ? f.makeArray(d) : []),
          d.unshift(c),
          (p = f.event.special[h] || {});
        if (p.trigger && p.trigger.apply(e, d) === !1) return;
        r = [[e, p.bindType || h]];
        if (!g && !p.noBubble && !f.isWindow(e)) {
          (s = p.delegateType || h),
            (m = E.test(s + h) ? e : e.parentNode),
            (n = null);
          for (; m; m = m.parentNode) r.push([m, s]), (n = m);
          n &&
            n === e.ownerDocument &&
            r.push([n.defaultView || n.parentWindow || a, s]);
        }
        for (l = 0; l < r.length && !c.isPropagationStopped(); l++)
          (m = r[l][0]),
            (c.type = r[l][1]),
            (q = (f._data(m, "events") || {})[c.type] && f._data(m, "handle")),
            q && q.apply(m, d),
            (q = o && m[o]),
            q && f.acceptData(m) && q.apply(m, d) === !1 && c.preventDefault();
        (c.type = h),
          !g &&
            !c.isDefaultPrevented() &&
            (!p._default || p._default.apply(e.ownerDocument, d) === !1) &&
            (h !== "click" || !f.nodeName(e, "a")) &&
            f.acceptData(e) &&
            o &&
            e[h] &&
            ((h !== "focus" && h !== "blur") || c.target.offsetWidth !== 0) &&
            !f.isWindow(e) &&
            ((n = e[o]),
            n && (e[o] = null),
            (f.event.triggered = h),
            e[h](),
            (f.event.triggered = b),
            n && (e[o] = n));
        return c.result;
      }
    },
    dispatch: function (c) {
      c = f.event.fix(c || a.event);
      var d = (f._data(this, "events") || {})[c.type] || [],
        e = d.delegateCount,
        g = [].slice.call(arguments, 0),
        h = !c.exclusive && !c.namespace,
        i = f.event.special[c.type] || {},
        j = [],
        k,
        l,
        m,
        n,
        o,
        p,
        q,
        r,
        s,
        t,
        u;
      (g[0] = c), (c.delegateTarget = this);
      if (!i.preDispatch || i.preDispatch.call(this, c) !== !1) {
        if (e && (!c.button || c.type !== "click")) {
          (n = f(this)), (n.context = this.ownerDocument || this);
          for (m = c.target; m != this; m = m.parentNode || this)
            if (m.disabled !== !0) {
              (p = {}), (r = []), (n[0] = m);
              for (k = 0; k < e; k++)
                (s = d[k]),
                  (t = s.selector),
                  p[t] === b && (p[t] = s.quick ? H(m, s.quick) : n.is(t)),
                  p[t] && r.push(s);
              r.length && j.push({ elem: m, matches: r });
            }
        }
        d.length > e && j.push({ elem: this, matches: d.slice(e) });
        for (k = 0; k < j.length && !c.isPropagationStopped(); k++) {
          (q = j[k]), (c.currentTarget = q.elem);
          for (
            l = 0;
            l < q.matches.length && !c.isImmediatePropagationStopped();
            l++
          ) {
            s = q.matches[l];
            if (
              h ||
              (!c.namespace && !s.namespace) ||
              (c.namespace_re && c.namespace_re.test(s.namespace))
            )
              (c.data = s.data),
                (c.handleObj = s),
                (o = (
                  (f.event.special[s.origType] || {}).handle || s.handler
                ).apply(q.elem, g)),
                o !== b &&
                  ((c.result = o),
                  o === !1 && (c.preventDefault(), c.stopPropagation()));
          }
        }
        i.postDispatch && i.postDispatch.call(this, c);
        return c.result;
      }
    },
    props: "attrChange attrName relatedNode srcElement altKey bubbles cancelable ctrlKey currentTarget eventPhase metaKey relatedTarget shiftKey target timeStamp view which".split(
      " "
    ),
    fixHooks: {},
    keyHooks: {
      props: "char charCode key keyCode".split(" "),
      filter: function (a, b) {
        a.which == null &&
          (a.which = b.charCode != null ? b.charCode : b.keyCode);
        return a;
      },
    },
    mouseHooks: {
      props: "button buttons clientX clientY fromElement offsetX offsetY pageX pageY screenX screenY toElement".split(
        " "
      ),
      filter: function (a, d) {
        var e,
          f,
          g,
          h = d.button,
          i = d.fromElement;
        a.pageX == null &&
          d.clientX != null &&
          ((e = a.target.ownerDocument || c),
          (f = e.documentElement),
          (g = e.body),
          (a.pageX =
            d.clientX +
            ((f && f.scrollLeft) || (g && g.scrollLeft) || 0) -
            ((f && f.clientLeft) || (g && g.clientLeft) || 0)),
          (a.pageY =
            d.clientY +
            ((f && f.scrollTop) || (g && g.scrollTop) || 0) -
            ((f && f.clientTop) || (g && g.clientTop) || 0))),
          !a.relatedTarget &&
            i &&
            (a.relatedTarget = i === a.target ? d.toElement : i),
          !a.which &&
            h !== b &&
            (a.which = h & 1 ? 1 : h & 2 ? 3 : h & 4 ? 2 : 0);
        return a;
      },
    },
    fix: function (a) {
      if (a[f.expando]) return a;
      var d,
        e,
        g = a,
        h = f.event.fixHooks[a.type] || {},
        i = h.props ? this.props.concat(h.props) : this.props;
      a = f.Event(g);
      for (d = i.length; d; ) (e = i[--d]), (a[e] = g[e]);
      a.target || (a.target = g.srcElement || c),
        a.target.nodeType === 3 && (a.target = a.target.parentNode),
        a.metaKey === b && (a.metaKey = a.ctrlKey);
      return h.filter ? h.filter(a, g) : a;
    },
    special: {
      ready: { setup: f.bindReady },
      load: { noBubble: !0 },
      focus: { delegateType: "focusin" },
      blur: { delegateType: "focusout" },
      beforeunload: {
        setup: function (a, b, c) {
          f.isWindow(this) && (this.onbeforeunload = c);
        },
        teardown: function (a, b) {
          this.onbeforeunload === b && (this.onbeforeunload = null);
        },
      },
    },
    simulate: function (a, b, c, d) {
      var e = f.extend(new f.Event(), c, {
        type: a,
        isSimulated: !0,
        originalEvent: {},
      });
      d ? f.event.trigger(e, null, b) : f.event.dispatch.call(b, e),
        e.isDefaultPrevented() && c.preventDefault();
    },
  }),
    (f.event.handle = f.event.dispatch),
    (f.removeEvent = c.removeEventListener
      ? function (a, b, c) {
          a.removeEventListener && a.removeEventListener(b, c, !1);
        }
      : function (a, b, c) {
          a.detachEvent && a.detachEvent("on" + b, c);
        }),
    (f.Event = function (a, b) {
      if (!(this instanceof f.Event)) return new f.Event(a, b);
      a && a.type
        ? ((this.originalEvent = a),
          (this.type = a.type),
          (this.isDefaultPrevented =
            a.defaultPrevented ||
            a.returnValue === !1 ||
            (a.defaultPrevented && a.defaultPrevented())
              ? K
              : J))
        : (this.type = a),
        b && f.extend(this, b),
        (this.timeStamp = (a && a.timeStamp) || f.now()),
        (this[f.expando] = !0);
    }),
    (f.Event.prototype = {
      preventDefault: function () {
        this.isDefaultPrevented = K;
        var a = this.originalEvent;
        !a || (a.preventDefault ? a.preventDefault() : (a.returnValue = !1));
      },
      stopPropagation: function () {
        this.isPropagationStopped = K;
        var a = this.originalEvent;
        !a || (a.stopPropagation && a.stopPropagation(), (a.cancelBubble = !0));
      },
      stopImmediatePropagation: function () {
        (this.isImmediatePropagationStopped = K), this.stopPropagation();
      },
      isDefaultPrevented: J,
      isPropagationStopped: J,
      isImmediatePropagationStopped: J,
    }),
    f.each(
      { mouseenter: "mouseover", mouseleave: "mouseout" },
      function (a, b) {
        f.event.special[a] = {
          delegateType: b,
          bindType: b,
          handle: function (a) {
            var c = this,
              d = a.relatedTarget,
              e = a.handleObj,
              g = e.selector,
              h;
            if (!d || (d !== c && !f.contains(c, d)))
              (a.type = e.origType),
                (h = e.handler.apply(this, arguments)),
                (a.type = b);
            return h;
          },
        };
      }
    ),
    f.support.submitBubbles ||
      (f.event.special.submit = {
        setup: function () {
          if (f.nodeName(this, "form")) return !1;
          f.event.add(this, "click._submit keypress._submit", function (a) {
            var c = a.target,
              d =
                f.nodeName(c, "input") || f.nodeName(c, "button") ? c.form : b;
            d &&
              !d._submit_attached &&
              (f.event.add(d, "submit._submit", function (a) {
                a._submit_bubble = !0;
              }),
              (d._submit_attached = !0));
          });
        },
        postDispatch: function (a) {
          a._submit_bubble &&
            (delete a._submit_bubble,
            this.parentNode &&
              !a.isTrigger &&
              f.event.simulate("submit", this.parentNode, a, !0));
        },
        teardown: function () {
          if (f.nodeName(this, "form")) return !1;
          f.event.remove(this, "._submit");
        },
      }),
    f.support.changeBubbles ||
      (f.event.special.change = {
        setup: function () {
          if (z.test(this.nodeName)) {
            if (this.type === "checkbox" || this.type === "radio")
              f.event.add(this, "propertychange._change", function (a) {
                a.originalEvent.propertyName === "checked" &&
                  (this._just_changed = !0);
              }),
                f.event.add(this, "click._change", function (a) {
                  this._just_changed &&
                    !a.isTrigger &&
                    ((this._just_changed = !1),
                    f.event.simulate("change", this, a, !0));
                });
            return !1;
          }
          f.event.add(this, "beforeactivate._change", function (a) {
            var b = a.target;
            z.test(b.nodeName) &&
              !b._change_attached &&
              (f.event.add(b, "change._change", function (a) {
                this.parentNode &&
                  !a.isSimulated &&
                  !a.isTrigger &&
                  f.event.simulate("change", this.parentNode, a, !0);
              }),
              (b._change_attached = !0));
          });
        },
        handle: function (a) {
          var b = a.target;
          if (
            this !== b ||
            a.isSimulated ||
            a.isTrigger ||
            (b.type !== "radio" && b.type !== "checkbox")
          )
            return a.handleObj.handler.apply(this, arguments);
        },
        teardown: function () {
          f.event.remove(this, "._change");
          return z.test(this.nodeName);
        },
      }),
    f.support.focusinBubbles ||
      f.each({ focus: "focusin", blur: "focusout" }, function (a, b) {
        var d = 0,
          e = function (a) {
            f.event.simulate(b, a.target, f.event.fix(a), !0);
          };
        f.event.special[b] = {
          setup: function () {
            d++ === 0 && c.addEventListener(a, e, !0);
          },
          teardown: function () {
            --d === 0 && c.removeEventListener(a, e, !0);
          },
        };
      }),
    f.fn.extend({
      on: function (a, c, d, e, g) {
        var h, i;
        if (typeof a == "object") {
          typeof c != "string" && ((d = d || c), (c = b));
          for (i in a) this.on(i, c, d, a[i], g);
          return this;
        }
        d == null && e == null
          ? ((e = c), (d = c = b))
          : e == null &&
            (typeof c == "string"
              ? ((e = d), (d = b))
              : ((e = d), (d = c), (c = b)));
        if (e === !1) e = J;
        else if (!e) return this;
        g === 1 &&
          ((h = e),
          (e = function (a) {
            f().off(a);
            return h.apply(this, arguments);
          }),
          (e.guid = h.guid || (h.guid = f.guid++)));
        return this.each(function () {
          f.event.add(this, a, e, d, c);
        });
      },
      one: function (a, b, c, d) {
        return this.on(a, b, c, d, 1);
      },
      off: function (a, c, d) {
        if (a && a.preventDefault && a.handleObj) {
          var e = a.handleObj;
          f(a.delegateTarget).off(
            e.namespace ? e.origType + "." + e.namespace : e.origType,
            e.selector,
            e.handler
          );
          return this;
        }
        if (typeof a == "object") {
          for (var g in a) this.off(g, c, a[g]);
          return this;
        }
        if (c === !1 || typeof c == "function") (d = c), (c = b);
        d === !1 && (d = J);
        return this.each(function () {
          f.event.remove(this, a, d, c);
        });
      },
      bind: function (a, b, c) {
        return this.on(a, null, b, c);
      },
      unbind: function (a, b) {
        return this.off(a, null, b);
      },
      live: function (a, b, c) {
        f(this.context).on(a, this.selector, b, c);
        return this;
      },
      die: function (a, b) {
        f(this.context).off(a, this.selector || "**", b);
        return this;
      },
      delegate: function (a, b, c, d) {
        return this.on(b, a, c, d);
      },
      undelegate: function (a, b, c) {
        return arguments.length == 1 ? this.off(a, "**") : this.off(b, a, c);
      },
      trigger: function (a, b) {
        return this.each(function () {
          f.event.trigger(a, b, this);
        });
      },
      triggerHandler: function (a, b) {
        if (this[0]) return f.event.trigger(a, b, this[0], !0);
      },
      toggle: function (a) {
        var b = arguments,
          c = a.guid || f.guid++,
          d = 0,
          e = function (c) {
            var e = (f._data(this, "lastToggle" + a.guid) || 0) % d;
            f._data(this, "lastToggle" + a.guid, e + 1), c.preventDefault();
            return b[e].apply(this, arguments) || !1;
          };
        e.guid = c;
        while (d < b.length) b[d++].guid = c;
        return this.click(e);
      },
      hover: function (a, b) {
        return this.mouseenter(a).mouseleave(b || a);
      },
    }),
    f.each(
      "blur focus focusin focusout load resize scroll unload click dblclick mousedown mouseup mousemove mouseover mouseout mouseenter mouseleave change select submit keydown keypress keyup error contextmenu".split(
        " "
      ),
      function (a, b) {
        (f.fn[b] = function (a, c) {
          c == null && ((c = a), (a = null));
          return arguments.length > 0
            ? this.on(b, null, a, c)
            : this.trigger(b);
        }),
          f.attrFn && (f.attrFn[b] = !0),
          C.test(b) && (f.event.fixHooks[b] = f.event.keyHooks),
          D.test(b) && (f.event.fixHooks[b] = f.event.mouseHooks);
      }
    ),
    (function () {
      function x(a, b, c, e, f, g) {
        for (var h = 0, i = e.length; h < i; h++) {
          var j = e[h];
          if (j) {
            var k = !1;
            j = j[a];
            while (j) {
              if (j[d] === c) {
                k = e[j.sizset];
                break;
              }
              if (j.nodeType === 1) {
                g || ((j[d] = c), (j.sizset = h));
                if (typeof b != "string") {
                  if (j === b) {
                    k = !0;
                    break;
                  }
                } else if (m.filter(b, [j]).length > 0) {
                  k = j;
                  break;
                }
              }
              j = j[a];
            }
            e[h] = k;
          }
        }
      }
      function w(a, b, c, e, f, g) {
        for (var h = 0, i = e.length; h < i; h++) {
          var j = e[h];
          if (j) {
            var k = !1;
            j = j[a];
            while (j) {
              if (j[d] === c) {
                k = e[j.sizset];
                break;
              }
              j.nodeType === 1 && !g && ((j[d] = c), (j.sizset = h));
              if (j.nodeName.toLowerCase() === b) {
                k = j;
                break;
              }
              j = j[a];
            }
            e[h] = k;
          }
        }
      }
      var a = /((?:\((?:\([^()]+\)|[^()]+)+\)|\[(?:\[[^\[\]]*\]|['"][^'"]*['"]|[^\[\]'"]+)+\]|\\.|[^ >+~,(\[\\]+)+|[>+~])(\s*,\s*)?((?:.|\r|\n)*)/g,
        d = "sizcache" + (Math.random() + "").replace(".", ""),
        e = 0,
        g = Object.prototype.toString,
        h = !1,
        i = !0,
        j = /\\/g,
        k = /\r\n/g,
        l = /\W/;
      [0, 0].sort(function () {
        i = !1;
        return 0;
      });
      var m = function (b, d, e, f) {
        (e = e || []), (d = d || c);
        var h = d;
        if (d.nodeType !== 1 && d.nodeType !== 9) return [];
        if (!b || typeof b != "string") return e;
        var i,
          j,
          k,
          l,
          n,
          q,
          r,
          t,
          u = !0,
          v = m.isXML(d),
          w = [],
          x = b;
        do {
          a.exec(""), (i = a.exec(x));
          if (i) {
            (x = i[3]), w.push(i[1]);
            if (i[2]) {
              l = i[3];
              break;
            }
          }
        } while (i);
        if (w.length > 1 && p.exec(b))
          if (w.length === 2 && o.relative[w[0]]) j = y(w[0] + w[1], d, f);
          else {
            j = o.relative[w[0]] ? [d] : m(w.shift(), d);
            while (w.length)
              (b = w.shift()),
                o.relative[b] && (b += w.shift()),
                (j = y(b, j, f));
          }
        else {
          !f &&
            w.length > 1 &&
            d.nodeType === 9 &&
            !v &&
            o.match.ID.test(w[0]) &&
            !o.match.ID.test(w[w.length - 1]) &&
            ((n = m.find(w.shift(), d, v)),
            (d = n.expr ? m.filter(n.expr, n.set)[0] : n.set[0]));
          if (d) {
            (n = f
              ? { expr: w.pop(), set: s(f) }
              : m.find(
                  w.pop(),
                  w.length === 1 &&
                    (w[0] === "~" || w[0] === "+") &&
                    d.parentNode
                    ? d.parentNode
                    : d,
                  v
                )),
              (j = n.expr ? m.filter(n.expr, n.set) : n.set),
              w.length > 0 ? (k = s(j)) : (u = !1);
            while (w.length)
              (q = w.pop()),
                (r = q),
                o.relative[q] ? (r = w.pop()) : (q = ""),
                r == null && (r = d),
                o.relative[q](k, r, v);
          } else k = w = [];
        }
        k || (k = j), k || m.error(q || b);
        if (g.call(k) === "[object Array]")
          if (!u) e.push.apply(e, k);
          else if (d && d.nodeType === 1)
            for (t = 0; k[t] != null; t++)
              k[t] &&
                (k[t] === !0 || (k[t].nodeType === 1 && m.contains(d, k[t]))) &&
                e.push(j[t]);
          else
            for (t = 0; k[t] != null; t++)
              k[t] && k[t].nodeType === 1 && e.push(j[t]);
        else s(k, e);
        l && (m(l, h, e, f), m.uniqueSort(e));
        return e;
      };
      (m.uniqueSort = function (a) {
        if (u) {
          (h = i), a.sort(u);
          if (h)
            for (var b = 1; b < a.length; b++)
              a[b] === a[b - 1] && a.splice(b--, 1);
        }
        return a;
      }),
        (m.matches = function (a, b) {
          return m(a, null, null, b);
        }),
        (m.matchesSelector = function (a, b) {
          return m(b, null, null, [a]).length > 0;
        }),
        (m.find = function (a, b, c) {
          var d, e, f, g, h, i;
          if (!a) return [];
          for (e = 0, f = o.order.length; e < f; e++) {
            h = o.order[e];
            if ((g = o.leftMatch[h].exec(a))) {
              (i = g[1]), g.splice(1, 1);
              if (i.substr(i.length - 1) !== "\\") {
                (g[1] = (g[1] || "").replace(j, "")), (d = o.find[h](g, b, c));
                if (d != null) {
                  a = a.replace(o.match[h], "");
                  break;
                }
              }
            }
          }
          d ||
            (d =
              typeof b.getElementsByTagName != "undefined"
                ? b.getElementsByTagName("*")
                : []);
          return { set: d, expr: a };
        }),
        (m.filter = function (a, c, d, e) {
          var f,
            g,
            h,
            i,
            j,
            k,
            l,
            n,
            p,
            q = a,
            r = [],
            s = c,
            t = c && c[0] && m.isXML(c[0]);
          while (a && c.length) {
            for (h in o.filter)
              if ((f = o.leftMatch[h].exec(a)) != null && f[2]) {
                (k = o.filter[h]), (l = f[1]), (g = !1), f.splice(1, 1);
                if (l.substr(l.length - 1) === "\\") continue;
                s === r && (r = []);
                if (o.preFilter[h]) {
                  f = o.preFilter[h](f, s, d, r, e, t);
                  if (!f) g = i = !0;
                  else if (f === !0) continue;
                }
                if (f)
                  for (n = 0; (j = s[n]) != null; n++)
                    j &&
                      ((i = k(j, f, n, s)),
                      (p = e ^ i),
                      d && i != null
                        ? p
                          ? (g = !0)
                          : (s[n] = !1)
                        : p && (r.push(j), (g = !0)));
                if (i !== b) {
                  d || (s = r), (a = a.replace(o.match[h], ""));
                  if (!g) return [];
                  break;
                }
              }
            if (a === q)
              if (g == null) m.error(a);
              else break;
            q = a;
          }
          return s;
        }),
        (m.error = function (a) {
          throw new Error("Syntax error, unrecognized expression: " + a);
        });
      var n = (m.getText = function (a) {
          var b,
            c,
            d = a.nodeType,
            e = "";
          if (d) {
            if (d === 1 || d === 9 || d === 11) {
              if (typeof a.textContent == "string") return a.textContent;
              if (typeof a.innerText == "string")
                return a.innerText.replace(k, "");
              for (a = a.firstChild; a; a = a.nextSibling) e += n(a);
            } else if (d === 3 || d === 4) return a.nodeValue;
          } else for (b = 0; (c = a[b]); b++) c.nodeType !== 8 && (e += n(c));
          return e;
        }),
        o = (m.selectors = {
          order: ["ID", "NAME", "TAG"],
          match: {
            ID: /#((?:[\w\u00c0-\uFFFF\-]|\\.)+)/,
            CLASS: /\.((?:[\w\u00c0-\uFFFF\-]|\\.)+)/,
            NAME: /\[name=['"]*((?:[\w\u00c0-\uFFFF\-]|\\.)+)['"]*\]/,
            ATTR: /\[\s*((?:[\w\u00c0-\uFFFF\-]|\\.)+)\s*(?:(\S?=)\s*(?:(['"])(.*?)\3|(#?(?:[\w\u00c0-\uFFFF\-]|\\.)*)|)|)\s*\]/,
            TAG: /^((?:[\w\u00c0-\uFFFF\*\-]|\\.)+)/,
            CHILD: /:(only|nth|last|first)-child(?:\(\s*(even|odd|(?:[+\-]?\d+|(?:[+\-]?\d*)?n\s*(?:[+\-]\s*\d+)?))\s*\))?/,
            POS: /:(nth|eq|gt|lt|first|last|even|odd)(?:\((\d*)\))?(?=[^\-]|$)/,
            PSEUDO: /:((?:[\w\u00c0-\uFFFF\-]|\\.)+)(?:\((['"]?)((?:\([^\)]+\)|[^\(\)]*)+)\2\))?/,
          },
          leftMatch: {},
          attrMap: { class: "className", for: "htmlFor" },
          attrHandle: {
            href: function (a) {
              return a.getAttribute("href");
            },
            type: function (a) {
              return a.getAttribute("type");
            },
          },
          relative: {
            "+": function (a, b) {
              var c = typeof b == "string",
                d = c && !l.test(b),
                e = c && !d;
              d && (b = b.toLowerCase());
              for (var f = 0, g = a.length, h; f < g; f++)
                if ((h = a[f])) {
                  while ((h = h.previousSibling) && h.nodeType !== 1);
                  a[f] =
                    e || (h && h.nodeName.toLowerCase() === b)
                      ? h || !1
                      : h === b;
                }
              e && m.filter(b, a, !0);
            },
            ">": function (a, b) {
              var c,
                d = typeof b == "string",
                e = 0,
                f = a.length;
              if (d && !l.test(b)) {
                b = b.toLowerCase();
                for (; e < f; e++) {
                  c = a[e];
                  if (c) {
                    var g = c.parentNode;
                    a[e] = g.nodeName.toLowerCase() === b ? g : !1;
                  }
                }
              } else {
                for (; e < f; e++)
                  (c = a[e]),
                    c && (a[e] = d ? c.parentNode : c.parentNode === b);
                d && m.filter(b, a, !0);
              }
            },
            "": function (a, b, c) {
              var d,
                f = e++,
                g = x;
              typeof b == "string" &&
                !l.test(b) &&
                ((b = b.toLowerCase()), (d = b), (g = w)),
                g("parentNode", b, f, a, d, c);
            },
            "~": function (a, b, c) {
              var d,
                f = e++,
                g = x;
              typeof b == "string" &&
                !l.test(b) &&
                ((b = b.toLowerCase()), (d = b), (g = w)),
                g("previousSibling", b, f, a, d, c);
            },
          },
          find: {
            ID: function (a, b, c) {
              if (typeof b.getElementById != "undefined" && !c) {
                var d = b.getElementById(a[1]);
                return d && d.parentNode ? [d] : [];
              }
            },
            NAME: function (a, b) {
              if (typeof b.getElementsByName != "undefined") {
                var c = [],
                  d = b.getElementsByName(a[1]);
                for (var e = 0, f = d.length; e < f; e++)
                  d[e].getAttribute("name") === a[1] && c.push(d[e]);
                return c.length === 0 ? null : c;
              }
            },
            TAG: function (a, b) {
              if (typeof b.getElementsByTagName != "undefined")
                return b.getElementsByTagName(a[1]);
            },
          },
          preFilter: {
            CLASS: function (a, b, c, d, e, f) {
              a = " " + a[1].replace(j, "") + " ";
              if (f) return a;
              for (var g = 0, h; (h = b[g]) != null; g++)
                h &&
                  (e ^
                  (h.className &&
                    (" " + h.className + " ")
                      .replace(/[\t\n\r]/g, " ")
                      .indexOf(a) >= 0)
                    ? c || d.push(h)
                    : c && (b[g] = !1));
              return !1;
            },
            ID: function (a) {
              return a[1].replace(j, "");
            },
            TAG: function (a, b) {
              return a[1].replace(j, "").toLowerCase();
            },
            CHILD: function (a) {
              if (a[1] === "nth") {
                a[2] || m.error(a[0]), (a[2] = a[2].replace(/^\+|\s*/g, ""));
                var b = /(-?)(\d*)(?:n([+\-]?\d*))?/.exec(
                  (a[2] === "even" && "2n") ||
                    (a[2] === "odd" && "2n+1") ||
                    (!/\D/.test(a[2]) && "0n+" + a[2]) ||
                    a[2]
                );
                (a[2] = b[1] + (b[2] || 1) - 0), (a[3] = b[3] - 0);
              } else a[2] && m.error(a[0]);
              a[0] = e++;
              return a;
            },
            ATTR: function (a, b, c, d, e, f) {
              var g = (a[1] = a[1].replace(j, ""));
              !f && o.attrMap[g] && (a[1] = o.attrMap[g]),
                (a[4] = (a[4] || a[5] || "").replace(j, "")),
                a[2] === "~=" && (a[4] = " " + a[4] + " ");
              return a;
            },
            PSEUDO: function (b, c, d, e, f) {
              if (b[1] === "not")
                if ((a.exec(b[3]) || "").length > 1 || /^\w/.test(b[3]))
                  b[3] = m(b[3], null, null, c);
                else {
                  var g = m.filter(b[3], c, d, !0 ^ f);
                  d || e.push.apply(e, g);
                  return !1;
                }
              else if (o.match.POS.test(b[0]) || o.match.CHILD.test(b[0]))
                return !0;
              return b;
            },
            POS: function (a) {
              a.unshift(!0);
              return a;
            },
          },
          filters: {
            enabled: function (a) {
              return a.disabled === !1 && a.type !== "hidden";
            },
            disabled: function (a) {
              return a.disabled === !0;
            },
            checked: function (a) {
              return a.checked === !0;
            },
            selected: function (a) {
              a.parentNode && a.parentNode.selectedIndex;
              return a.selected === !0;
            },
            parent: function (a) {
              return !!a.firstChild;
            },
            empty: function (a) {
              return !a.firstChild;
            },
            has: function (a, b, c) {
              return !!m(c[3], a).length;
            },
            header: function (a) {
              return /h\d/i.test(a.nodeName);
            },
            text: function (a) {
              var b = a.getAttribute("type"),
                c = a.type;
              return (
                a.nodeName.toLowerCase() === "input" &&
                "text" === c &&
                (b === c || b === null)
              );
            },
            radio: function (a) {
              return a.nodeName.toLowerCase() === "input" && "radio" === a.type;
            },
            checkbox: function (a) {
              return (
                a.nodeName.toLowerCase() === "input" && "checkbox" === a.type
              );
            },
            file: function (a) {
              return a.nodeName.toLowerCase() === "input" && "file" === a.type;
            },
            password: function (a) {
              return (
                a.nodeName.toLowerCase() === "input" && "password" === a.type
              );
            },
            submit: function (a) {
              var b = a.nodeName.toLowerCase();
              return (b === "input" || b === "button") && "submit" === a.type;
            },
            image: function (a) {
              return a.nodeName.toLowerCase() === "input" && "image" === a.type;
            },
            reset: function (a) {
              var b = a.nodeName.toLowerCase();
              return (b === "input" || b === "button") && "reset" === a.type;
            },
            button: function (a) {
              var b = a.nodeName.toLowerCase();
              return (b === "input" && "button" === a.type) || b === "button";
            },
            input: function (a) {
              return /input|select|textarea|button/i.test(a.nodeName);
            },
            focus: function (a) {
              return a === a.ownerDocument.activeElement;
            },
          },
          setFilters: {
            first: function (a, b) {
              return b === 0;
            },
            last: function (a, b, c, d) {
              return b === d.length - 1;
            },
            even: function (a, b) {
              return b % 2 === 0;
            },
            odd: function (a, b) {
              return b % 2 === 1;
            },
            lt: function (a, b, c) {
              return b < c[3] - 0;
            },
            gt: function (a, b, c) {
              return b > c[3] - 0;
            },
            nth: function (a, b, c) {
              return c[3] - 0 === b;
            },
            eq: function (a, b, c) {
              return c[3] - 0 === b;
            },
          },
          filter: {
            PSEUDO: function (a, b, c, d) {
              var e = b[1],
                f = o.filters[e];
              if (f) return f(a, c, b, d);
              if (e === "contains")
                return (
                  (a.textContent || a.innerText || n([a]) || "").indexOf(
                    b[3]
                  ) >= 0
                );
              if (e === "not") {
                var g = b[3];
                for (var h = 0, i = g.length; h < i; h++)
                  if (g[h] === a) return !1;
                return !0;
              }
              m.error(e);
            },
            CHILD: function (a, b) {
              var c,
                e,
                f,
                g,
                h,
                i,
                j,
                k = b[1],
                l = a;
              switch (k) {
                case "only":
                case "first":
                  while ((l = l.previousSibling))
                    if (l.nodeType === 1) return !1;
                  if (k === "first") return !0;
                  l = a;
                case "last":
                  while ((l = l.nextSibling)) if (l.nodeType === 1) return !1;
                  return !0;
                case "nth":
                  (c = b[2]), (e = b[3]);
                  if (c === 1 && e === 0) return !0;
                  (f = b[0]), (g = a.parentNode);
                  if (g && (g[d] !== f || !a.nodeIndex)) {
                    i = 0;
                    for (l = g.firstChild; l; l = l.nextSibling)
                      l.nodeType === 1 && (l.nodeIndex = ++i);
                    g[d] = f;
                  }
                  j = a.nodeIndex - e;
                  return c === 0 ? j === 0 : j % c === 0 && j / c >= 0;
              }
            },
            ID: function (a, b) {
              return a.nodeType === 1 && a.getAttribute("id") === b;
            },
            TAG: function (a, b) {
              return (
                (b === "*" && a.nodeType === 1) ||
                (!!a.nodeName && a.nodeName.toLowerCase() === b)
              );
            },
            CLASS: function (a, b) {
              return (
                (" " + (a.className || a.getAttribute("class")) + " ").indexOf(
                  b
                ) > -1
              );
            },
            ATTR: function (a, b) {
              var c = b[1],
                d = m.attr
                  ? m.attr(a, c)
                  : o.attrHandle[c]
                  ? o.attrHandle[c](a)
                  : a[c] != null
                  ? a[c]
                  : a.getAttribute(c),
                e = d + "",
                f = b[2],
                g = b[4];
              return d == null
                ? f === "!="
                : !f && m.attr
                ? d != null
                : f === "="
                ? e === g
                : f === "*="
                ? e.indexOf(g) >= 0
                : f === "~="
                ? (" " + e + " ").indexOf(g) >= 0
                : g
                ? f === "!="
                  ? e !== g
                  : f === "^="
                  ? e.indexOf(g) === 0
                  : f === "$="
                  ? e.substr(e.length - g.length) === g
                  : f === "|="
                  ? e === g || e.substr(0, g.length + 1) === g + "-"
                  : !1
                : e && d !== !1;
            },
            POS: function (a, b, c, d) {
              var e = b[2],
                f = o.setFilters[e];
              if (f) return f(a, c, b, d);
            },
          },
        }),
        p = o.match.POS,
        q = function (a, b) {
          return "\\" + (b - 0 + 1);
        };
      for (var r in o.match)
        (o.match[r] = new RegExp(
          o.match[r].source + /(?![^\[]*\])(?![^\(]*\))/.source
        )),
          (o.leftMatch[r] = new RegExp(
            /(^(?:.|\r|\n)*?)/.source + o.match[r].source.replace(/\\(\d+)/g, q)
          ));
      o.match.globalPOS = p;
      var s = function (a, b) {
        a = Array.prototype.slice.call(a, 0);
        if (b) {
          b.push.apply(b, a);
          return b;
        }
        return a;
      };
      try {
        Array.prototype.slice.call(c.documentElement.childNodes, 0)[0].nodeType;
      } catch (t) {
        s = function (a, b) {
          var c = 0,
            d = b || [];
          if (g.call(a) === "[object Array]") Array.prototype.push.apply(d, a);
          else if (typeof a.length == "number")
            for (var e = a.length; c < e; c++) d.push(a[c]);
          else for (; a[c]; c++) d.push(a[c]);
          return d;
        };
      }
      var u, v;
      c.documentElement.compareDocumentPosition
        ? (u = function (a, b) {
            if (a === b) {
              h = !0;
              return 0;
            }
            if (!a.compareDocumentPosition || !b.compareDocumentPosition)
              return a.compareDocumentPosition ? -1 : 1;
            return a.compareDocumentPosition(b) & 4 ? -1 : 1;
          })
        : ((u = function (a, b) {
            if (a === b) {
              h = !0;
              return 0;
            }
            if (a.sourceIndex && b.sourceIndex)
              return a.sourceIndex - b.sourceIndex;
            var c,
              d,
              e = [],
              f = [],
              g = a.parentNode,
              i = b.parentNode,
              j = g;
            if (g === i) return v(a, b);
            if (!g) return -1;
            if (!i) return 1;
            while (j) e.unshift(j), (j = j.parentNode);
            j = i;
            while (j) f.unshift(j), (j = j.parentNode);
            (c = e.length), (d = f.length);
            for (var k = 0; k < c && k < d; k++)
              if (e[k] !== f[k]) return v(e[k], f[k]);
            return k === c ? v(a, f[k], -1) : v(e[k], b, 1);
          }),
          (v = function (a, b, c) {
            if (a === b) return c;
            var d = a.nextSibling;
            while (d) {
              if (d === b) return -1;
              d = d.nextSibling;
            }
            return 1;
          })),
        (function () {
          var a = c.createElement("div"),
            d = "script" + new Date().getTime(),
            e = c.documentElement;
          (a.innerHTML = "<a name='" + d + "'/>"),
            e.insertBefore(a, e.firstChild),
            c.getElementById(d) &&
              ((o.find.ID = function (a, c, d) {
                if (typeof c.getElementById != "undefined" && !d) {
                  var e = c.getElementById(a[1]);
                  return e
                    ? e.id === a[1] ||
                      (typeof e.getAttributeNode != "undefined" &&
                        e.getAttributeNode("id").nodeValue === a[1])
                      ? [e]
                      : b
                    : [];
                }
              }),
              (o.filter.ID = function (a, b) {
                var c =
                  typeof a.getAttributeNode != "undefined" &&
                  a.getAttributeNode("id");
                return a.nodeType === 1 && c && c.nodeValue === b;
              })),
            e.removeChild(a),
            (e = a = null);
        })(),
        (function () {
          var a = c.createElement("div");
          a.appendChild(c.createComment("")),
            a.getElementsByTagName("*").length > 0 &&
              (o.find.TAG = function (a, b) {
                var c = b.getElementsByTagName(a[1]);
                if (a[1] === "*") {
                  var d = [];
                  for (var e = 0; c[e]; e++)
                    c[e].nodeType === 1 && d.push(c[e]);
                  c = d;
                }
                return c;
              }),
            (a.innerHTML = "<a href='#'></a>"),
            a.firstChild &&
              typeof a.firstChild.getAttribute != "undefined" &&
              a.firstChild.getAttribute("href") !== "#" &&
              (o.attrHandle.href = function (a) {
                return a.getAttribute("href", 2);
              }),
            (a = null);
        })(),
        c.querySelectorAll &&
          (function () {
            var a = m,
              b = c.createElement("div"),
              d = "__sizzle__";
            b.innerHTML = "<p class='TEST'></p>";
            if (
              !b.querySelectorAll ||
              b.querySelectorAll(".TEST").length !== 0
            ) {
              m = function (b, e, f, g) {
                e = e || c;
                if (!g && !m.isXML(e)) {
                  var h = /^(\w+$)|^\.([\w\-]+$)|^#([\w\-]+$)/.exec(b);
                  if (h && (e.nodeType === 1 || e.nodeType === 9)) {
                    if (h[1]) return s(e.getElementsByTagName(b), f);
                    if (h[2] && o.find.CLASS && e.getElementsByClassName)
                      return s(e.getElementsByClassName(h[2]), f);
                  }
                  if (e.nodeType === 9) {
                    if (b === "body" && e.body) return s([e.body], f);
                    if (h && h[3]) {
                      var i = e.getElementById(h[3]);
                      if (!i || !i.parentNode) return s([], f);
                      if (i.id === h[3]) return s([i], f);
                    }
                    try {
                      return s(e.querySelectorAll(b), f);
                    } catch (j) {}
                  } else if (
                    e.nodeType === 1 &&
                    e.nodeName.toLowerCase() !== "object"
                  ) {
                    var k = e,
                      l = e.getAttribute("id"),
                      n = l || d,
                      p = e.parentNode,
                      q = /^\s*[+~]/.test(b);
                    l ? (n = n.replace(/'/g, "\\$&")) : e.setAttribute("id", n),
                      q && p && (e = e.parentNode);
                    try {
                      if (!q || p)
                        return s(
                          e.querySelectorAll("[id='" + n + "'] " + b),
                          f
                        );
                    } catch (r) {
                    } finally {
                      l || k.removeAttribute("id");
                    }
                  }
                }
                return a(b, e, f, g);
              };
              for (var e in a) m[e] = a[e];
              b = null;
            }
          })(),
        (function () {
          var a = c.documentElement,
            b =
              a.matchesSelector ||
              a.mozMatchesSelector ||
              a.webkitMatchesSelector ||
              a.msMatchesSelector;
          if (b) {
            var d = !b.call(c.createElement("div"), "div"),
              e = !1;
            try {
              b.call(c.documentElement, "[test!='']:sizzle");
            } catch (f) {
              e = !0;
            }
            m.matchesSelector = function (a, c) {
              c = c.replace(/\=\s*([^'"\]]*)\s*\]/g, "='$1']");
              if (!m.isXML(a))
                try {
                  if (e || (!o.match.PSEUDO.test(c) && !/!=/.test(c))) {
                    var f = b.call(a, c);
                    if (f || !d || (a.document && a.document.nodeType !== 11))
                      return f;
                  }
                } catch (g) {}
              return m(c, null, null, [a]).length > 0;
            };
          }
        })(),
        (function () {
          var a = c.createElement("div");
          a.innerHTML = "<div class='test e'></div><div class='test'></div>";
          if (
            !!a.getElementsByClassName &&
            a.getElementsByClassName("e").length !== 0
          ) {
            a.lastChild.className = "e";
            if (a.getElementsByClassName("e").length === 1) return;
            o.order.splice(1, 0, "CLASS"),
              (o.find.CLASS = function (a, b, c) {
                if (typeof b.getElementsByClassName != "undefined" && !c)
                  return b.getElementsByClassName(a[1]);
              }),
              (a = null);
          }
        })(),
        c.documentElement.contains
          ? (m.contains = function (a, b) {
              return a !== b && (a.contains ? a.contains(b) : !0);
            })
          : c.documentElement.compareDocumentPosition
          ? (m.contains = function (a, b) {
              return !!(a.compareDocumentPosition(b) & 16);
            })
          : (m.contains = function () {
              return !1;
            }),
        (m.isXML = function (a) {
          var b = (a ? a.ownerDocument || a : 0).documentElement;
          return b ? b.nodeName !== "HTML" : !1;
        });
      var y = function (a, b, c) {
        var d,
          e = [],
          f = "",
          g = b.nodeType ? [b] : b;
        while ((d = o.match.PSEUDO.exec(a)))
          (f += d[0]), (a = a.replace(o.match.PSEUDO, ""));
        a = o.relative[a] ? a + "*" : a;
        for (var h = 0, i = g.length; h < i; h++) m(a, g[h], e, c);
        return m.filter(f, e);
      };
      (m.attr = f.attr),
        (m.selectors.attrMap = {}),
        (f.find = m),
        (f.expr = m.selectors),
        (f.expr[":"] = f.expr.filters),
        (f.unique = m.uniqueSort),
        (f.text = m.getText),
        (f.isXMLDoc = m.isXML),
        (f.contains = m.contains);
    })();
  var L = /Until$/,
    M = /^(?:parents|prevUntil|prevAll)/,
    N = /,/,
    O = /^.[^:#\[\.,]*$/,
    P = Array.prototype.slice,
    Q = f.expr.match.globalPOS,
    R = { children: !0, contents: !0, next: !0, prev: !0 };
  f.fn.extend({
    find: function (a) {
      var b = this,
        c,
        d;
      if (typeof a != "string")
        return f(a).filter(function () {
          for (c = 0, d = b.length; c < d; c++)
            if (f.contains(b[c], this)) return !0;
        });
      var e = this.pushStack("", "find", a),
        g,
        h,
        i;
      for (c = 0, d = this.length; c < d; c++) {
        (g = e.length), f.find(a, this[c], e);
        if (c > 0)
          for (h = g; h < e.length; h++)
            for (i = 0; i < g; i++)
              if (e[i] === e[h]) {
                e.splice(h--, 1);
                break;
              }
      }
      return e;
    },
    has: function (a) {
      var b = f(a);
      return this.filter(function () {
        for (var a = 0, c = b.length; a < c; a++)
          if (f.contains(this, b[a])) return !0;
      });
    },
    not: function (a) {
      return this.pushStack(T(this, a, !1), "not", a);
    },
    filter: function (a) {
      return this.pushStack(T(this, a, !0), "filter", a);
    },
    is: function (a) {
      return (
        !!a &&
        (typeof a == "string"
          ? Q.test(a)
            ? f(a, this.context).index(this[0]) >= 0
            : f.filter(a, this).length > 0
          : this.filter(a).length > 0)
      );
    },
    closest: function (a, b) {
      var c = [],
        d,
        e,
        g = this[0];
      if (f.isArray(a)) {
        var h = 1;
        while (g && g.ownerDocument && g !== b) {
          for (d = 0; d < a.length; d++)
            f(g).is(a[d]) && c.push({ selector: a[d], elem: g, level: h });
          (g = g.parentNode), h++;
        }
        return c;
      }
      var i = Q.test(a) || typeof a != "string" ? f(a, b || this.context) : 0;
      for (d = 0, e = this.length; d < e; d++) {
        g = this[d];
        while (g) {
          if (i ? i.index(g) > -1 : f.find.matchesSelector(g, a)) {
            c.push(g);
            break;
          }
          g = g.parentNode;
          if (!g || !g.ownerDocument || g === b || g.nodeType === 11) break;
        }
      }
      c = c.length > 1 ? f.unique(c) : c;
      return this.pushStack(c, "closest", a);
    },
    index: function (a) {
      if (!a) return this[0] && this[0].parentNode ? this.prevAll().length : -1;
      if (typeof a == "string") return f.inArray(this[0], f(a));
      return f.inArray(a.jquery ? a[0] : a, this);
    },
    add: function (a, b) {
      var c =
          typeof a == "string"
            ? f(a, b)
            : f.makeArray(a && a.nodeType ? [a] : a),
        d = f.merge(this.get(), c);
      return this.pushStack(S(c[0]) || S(d[0]) ? d : f.unique(d));
    },
    andSelf: function () {
      return this.add(this.prevObject);
    },
  }),
    f.each(
      {
        parent: function (a) {
          var b = a.parentNode;
          return b && b.nodeType !== 11 ? b : null;
        },
        parents: function (a) {
          return f.dir(a, "parentNode");
        },
        parentsUntil: function (a, b, c) {
          return f.dir(a, "parentNode", c);
        },
        next: function (a) {
          return f.nth(a, 2, "nextSibling");
        },
        prev: function (a) {
          return f.nth(a, 2, "previousSibling");
        },
        nextAll: function (a) {
          return f.dir(a, "nextSibling");
        },
        prevAll: function (a) {
          return f.dir(a, "previousSibling");
        },
        nextUntil: function (a, b, c) {
          return f.dir(a, "nextSibling", c);
        },
        prevUntil: function (a, b, c) {
          return f.dir(a, "previousSibling", c);
        },
        siblings: function (a) {
          return f.sibling((a.parentNode || {}).firstChild, a);
        },
        children: function (a) {
          return f.sibling(a.firstChild);
        },
        contents: function (a) {
          return f.nodeName(a, "iframe")
            ? a.contentDocument || a.contentWindow.document
            : f.makeArray(a.childNodes);
        },
      },
      function (a, b) {
        f.fn[a] = function (c, d) {
          var e = f.map(this, b, c);
          L.test(a) || (d = c),
            d && typeof d == "string" && (e = f.filter(d, e)),
            (e = this.length > 1 && !R[a] ? f.unique(e) : e),
            (this.length > 1 || N.test(d)) && M.test(a) && (e = e.reverse());
          return this.pushStack(e, a, P.call(arguments).join(","));
        };
      }
    ),
    f.extend({
      filter: function (a, b, c) {
        c && (a = ":not(" + a + ")");
        return b.length === 1
          ? f.find.matchesSelector(b[0], a)
            ? [b[0]]
            : []
          : f.find.matches(a, b);
      },
      dir: function (a, c, d) {
        var e = [],
          g = a[c];
        while (
          g &&
          g.nodeType !== 9 &&
          (d === b || g.nodeType !== 1 || !f(g).is(d))
        )
          g.nodeType === 1 && e.push(g), (g = g[c]);
        return e;
      },
      nth: function (a, b, c, d) {
        b = b || 1;
        var e = 0;
        for (; a; a = a[c]) if (a.nodeType === 1 && ++e === b) break;
        return a;
      },
      sibling: function (a, b) {
        var c = [];
        for (; a; a = a.nextSibling) a.nodeType === 1 && a !== b && c.push(a);
        return c;
      },
    });
  var V =
      "abbr|article|aside|audio|bdi|canvas|data|datalist|details|figcaption|figure|footer|header|hgroup|mark|meter|nav|output|progress|section|summary|time|video",
    W = / jQuery\d+="(?:\d+|null)"/g,
    X = /^\s+/,
    Y = /<(?!area|br|col|embed|hr|img|input|link|meta|param)(([\w:]+)[^>]*)\/>/gi,
    Z = /<([\w:]+)/,
    $ = /<tbody/i,
    _ = /<|&#?\w+;/,
    ba = /<(?:script|style)/i,
    bb = /<(?:script|object|embed|option|style)/i,
    bc = new RegExp("<(?:" + V + ")[\\s/>]", "i"),
    bd = /checked\s*(?:[^=]|=\s*.checked.)/i,
    be = /\/(java|ecma)script/i,
    bf = /^\s*<!(?:\[CDATA\[|\-\-)/,
    bg = {
      option: [1, "<select multiple='multiple'>", "</select>"],
      legend: [1, "<fieldset>", "</fieldset>"],
      thead: [1, "<table>", "</table>"],
      tr: [2, "<table><tbody>", "</tbody></table>"],
      td: [3, "<table><tbody><tr>", "</tr></tbody></table>"],
      col: [2, "<table><tbody></tbody><colgroup>", "</colgroup></table>"],
      area: [1, "<map>", "</map>"],
      _default: [0, "", ""],
    },
    bh = U(c);
  (bg.optgroup = bg.option),
    (bg.tbody = bg.tfoot = bg.colgroup = bg.caption = bg.thead),
    (bg.th = bg.td),
    f.support.htmlSerialize || (bg._default = [1, "div<div>", "</div>"]),
    f.fn.extend({
      text: function (a) {
        return f.access(
          this,
          function (a) {
            return a === b
              ? f.text(this)
              : this.empty().append(
                  ((this[0] && this[0].ownerDocument) || c).createTextNode(a)
                );
          },
          null,
          a,
          arguments.length
        );
      },
      wrapAll: function (a) {
        if (f.isFunction(a))
          return this.each(function (b) {
            f(this).wrapAll(a.call(this, b));
          });
        if (this[0]) {
          var b = f(a, this[0].ownerDocument).eq(0).clone(!0);
          this[0].parentNode && b.insertBefore(this[0]),
            b
              .map(function () {
                var a = this;
                while (a.firstChild && a.firstChild.nodeType === 1)
                  a = a.firstChild;
                return a;
              })
              .append(this);
        }
        return this;
      },
      wrapInner: function (a) {
        if (f.isFunction(a))
          return this.each(function (b) {
            f(this).wrapInner(a.call(this, b));
          });
        return this.each(function () {
          var b = f(this),
            c = b.contents();
          c.length ? c.wrapAll(a) : b.append(a);
        });
      },
      wrap: function (a) {
        var b = f.isFunction(a);
        return this.each(function (c) {
          f(this).wrapAll(b ? a.call(this, c) : a);
        });
      },
      unwrap: function () {
        return this.parent()
          .each(function () {
            f.nodeName(this, "body") || f(this).replaceWith(this.childNodes);
          })
          .end();
      },
      append: function () {
        return this.domManip(arguments, !0, function (a) {
          this.nodeType === 1 && this.appendChild(a);
        });
      },
      prepend: function () {
        return this.domManip(arguments, !0, function (a) {
          this.nodeType === 1 && this.insertBefore(a, this.firstChild);
        });
      },
      before: function () {
        if (this[0] && this[0].parentNode)
          return this.domManip(arguments, !1, function (a) {
            this.parentNode.insertBefore(a, this);
          });
        if (arguments.length) {
          var a = f.clean(arguments);
          a.push.apply(a, this.toArray());
          return this.pushStack(a, "before", arguments);
        }
      },
      after: function () {
        if (this[0] && this[0].parentNode)
          return this.domManip(arguments, !1, function (a) {
            this.parentNode.insertBefore(a, this.nextSibling);
          });
        if (arguments.length) {
          var a = this.pushStack(this, "after", arguments);
          a.push.apply(a, f.clean(arguments));
          return a;
        }
      },
      remove: function (a, b) {
        for (var c = 0, d; (d = this[c]) != null; c++)
          if (!a || f.filter(a, [d]).length)
            !b &&
              d.nodeType === 1 &&
              (f.cleanData(d.getElementsByTagName("*")), f.cleanData([d])),
              d.parentNode && d.parentNode.removeChild(d);
        return this;
      },
      empty: function () {
        for (var a = 0, b; (b = this[a]) != null; a++) {
          b.nodeType === 1 && f.cleanData(b.getElementsByTagName("*"));
          while (b.firstChild) b.removeChild(b.firstChild);
        }
        return this;
      },
      clone: function (a, b) {
        (a = a == null ? !1 : a), (b = b == null ? a : b);
        return this.map(function () {
          return f.clone(this, a, b);
        });
      },
      html: function (a) {
        return f.access(
          this,
          function (a) {
            var c = this[0] || {},
              d = 0,
              e = this.length;
            if (a === b)
              return c.nodeType === 1 ? c.innerHTML.replace(W, "") : null;
            if (
              typeof a == "string" &&
              !ba.test(a) &&
              (f.support.leadingWhitespace || !X.test(a)) &&
              !bg[(Z.exec(a) || ["", ""])[1].toLowerCase()]
            ) {
              a = a.replace(Y, "<$1></$2>");
              try {
                for (; d < e; d++)
                  (c = this[d] || {}),
                    c.nodeType === 1 &&
                      (f.cleanData(c.getElementsByTagName("*")),
                      (c.innerHTML = a));
                c = 0;
              } catch (g) {}
            }
            c && this.empty().append(a);
          },
          null,
          a,
          arguments.length
        );
      },
      replaceWith: function (a) {
        if (this[0] && this[0].parentNode) {
          if (f.isFunction(a))
            return this.each(function (b) {
              var c = f(this),
                d = c.html();
              c.replaceWith(a.call(this, b, d));
            });
          typeof a != "string" && (a = f(a).detach());
          return this.each(function () {
            var b = this.nextSibling,
              c = this.parentNode;
            f(this).remove(), b ? f(b).before(a) : f(c).append(a);
          });
        }
        return this.length
          ? this.pushStack(f(f.isFunction(a) ? a() : a), "replaceWith", a)
          : this;
      },
      detach: function (a) {
        return this.remove(a, !0);
      },
      domManip: function (a, c, d) {
        var e,
          g,
          h,
          i,
          j = a[0],
          k = [];
        if (
          !f.support.checkClone &&
          arguments.length === 3 &&
          typeof j == "string" &&
          bd.test(j)
        )
          return this.each(function () {
            f(this).domManip(a, c, d, !0);
          });
        if (f.isFunction(j))
          return this.each(function (e) {
            var g = f(this);
            (a[0] = j.call(this, e, c ? g.html() : b)), g.domManip(a, c, d);
          });
        if (this[0]) {
          (i = j && j.parentNode),
            f.support.parentNode &&
            i &&
            i.nodeType === 11 &&
            i.childNodes.length === this.length
              ? (e = { fragment: i })
              : (e = f.buildFragment(a, this, k)),
            (h = e.fragment),
            h.childNodes.length === 1
              ? (g = h = h.firstChild)
              : (g = h.firstChild);
          if (g) {
            c = c && f.nodeName(g, "tr");
            for (var l = 0, m = this.length, n = m - 1; l < m; l++)
              d.call(
                c ? bi(this[l], g) : this[l],
                e.cacheable || (m > 1 && l < n) ? f.clone(h, !0, !0) : h
              );
          }
          k.length &&
            f.each(k, function (a, b) {
              b.src
                ? f.ajax({
                    type: "GET",
                    global: !1,
                    url: b.src,
                    async: !1,
                    dataType: "script",
                  })
                : f.globalEval(
                    (b.text || b.textContent || b.innerHTML || "").replace(
                      bf,
                      "/*$0*/"
                    )
                  ),
                b.parentNode && b.parentNode.removeChild(b);
            });
        }
        return this;
      },
    }),
    (f.buildFragment = function (a, b, d) {
      var e,
        g,
        h,
        i,
        j = a[0];
      b && b[0] && (i = b[0].ownerDocument || b[0]),
        i.createDocumentFragment || (i = c),
        a.length === 1 &&
          typeof j == "string" &&
          j.length < 512 &&
          i === c &&
          j.charAt(0) === "<" &&
          !bb.test(j) &&
          (f.support.checkClone || !bd.test(j)) &&
          (f.support.html5Clone || !bc.test(j)) &&
          ((g = !0), (h = f.fragments[j]), h && h !== 1 && (e = h)),
        e || ((e = i.createDocumentFragment()), f.clean(a, i, e, d)),
        g && (f.fragments[j] = h ? e : 1);
      return { fragment: e, cacheable: g };
    }),
    (f.fragments = {}),
    f.each(
      {
        appendTo: "append",
        prependTo: "prepend",
        insertBefore: "before",
        insertAfter: "after",
        replaceAll: "replaceWith",
      },
      function (a, b) {
        f.fn[a] = function (c) {
          var d = [],
            e = f(c),
            g = this.length === 1 && this[0].parentNode;
          if (
            g &&
            g.nodeType === 11 &&
            g.childNodes.length === 1 &&
            e.length === 1
          ) {
            e[b](this[0]);
            return this;
          }
          for (var h = 0, i = e.length; h < i; h++) {
            var j = (h > 0 ? this.clone(!0) : this).get();
            f(e[h])[b](j), (d = d.concat(j));
          }
          return this.pushStack(d, a, e.selector);
        };
      }
    ),
    f.extend({
      clone: function (a, b, c) {
        var d,
          e,
          g,
          h =
            f.support.html5Clone ||
            f.isXMLDoc(a) ||
            !bc.test("<" + a.nodeName + ">")
              ? a.cloneNode(!0)
              : bo(a);
        if (
          (!f.support.noCloneEvent || !f.support.noCloneChecked) &&
          (a.nodeType === 1 || a.nodeType === 11) &&
          !f.isXMLDoc(a)
        ) {
          bk(a, h), (d = bl(a)), (e = bl(h));
          for (g = 0; d[g]; ++g) e[g] && bk(d[g], e[g]);
        }
        if (b) {
          bj(a, h);
          if (c) {
            (d = bl(a)), (e = bl(h));
            for (g = 0; d[g]; ++g) bj(d[g], e[g]);
          }
        }
        d = e = null;
        return h;
      },
      clean: function (a, b, d, e) {
        var g,
          h,
          i,
          j = [];
        (b = b || c),
          typeof b.createElement == "undefined" &&
            (b = b.ownerDocument || (b[0] && b[0].ownerDocument) || c);
        for (var k = 0, l; (l = a[k]) != null; k++) {
          typeof l == "number" && (l += "");
          if (!l) continue;
          if (typeof l == "string")
            if (!_.test(l)) l = b.createTextNode(l);
            else {
              l = l.replace(Y, "<$1></$2>");
              var m = (Z.exec(l) || ["", ""])[1].toLowerCase(),
                n = bg[m] || bg._default,
                o = n[0],
                p = b.createElement("div"),
                q = bh.childNodes,
                r;
              b === c ? bh.appendChild(p) : U(b).appendChild(p),
                (p.innerHTML = n[1] + l + n[2]);
              while (o--) p = p.lastChild;
              if (!f.support.tbody) {
                var s = $.test(l),
                  t =
                    m === "table" && !s
                      ? p.firstChild && p.firstChild.childNodes
                      : n[1] === "<table>" && !s
                      ? p.childNodes
                      : [];
                for (i = t.length - 1; i >= 0; --i)
                  f.nodeName(t[i], "tbody") &&
                    !t[i].childNodes.length &&
                    t[i].parentNode.removeChild(t[i]);
              }
              !f.support.leadingWhitespace &&
                X.test(l) &&
                p.insertBefore(b.createTextNode(X.exec(l)[0]), p.firstChild),
                (l = p.childNodes),
                p &&
                  (p.parentNode.removeChild(p),
                  q.length > 0 &&
                    ((r = q[q.length - 1]),
                    r && r.parentNode && r.parentNode.removeChild(r)));
            }
          var u;
          if (!f.support.appendChecked)
            if (l[0] && typeof (u = l.length) == "number")
              for (i = 0; i < u; i++) bn(l[i]);
            else bn(l);
          l.nodeType ? j.push(l) : (j = f.merge(j, l));
        }
        if (d) {
          g = function (a) {
            return !a.type || be.test(a.type);
          };
          for (k = 0; j[k]; k++) {
            h = j[k];
            if (e && f.nodeName(h, "script") && (!h.type || be.test(h.type)))
              e.push(h.parentNode ? h.parentNode.removeChild(h) : h);
            else {
              if (h.nodeType === 1) {
                var v = f.grep(h.getElementsByTagName("script"), g);
                j.splice.apply(j, [k + 1, 0].concat(v));
              }
              d.appendChild(h);
            }
          }
        }
        return j;
      },
      cleanData: function (a) {
        var b,
          c,
          d = f.cache,
          e = f.event.special,
          g = f.support.deleteExpando;
        for (var h = 0, i; (i = a[h]) != null; h++) {
          if (i.nodeName && f.noData[i.nodeName.toLowerCase()]) continue;
          c = i[f.expando];
          if (c) {
            b = d[c];
            if (b && b.events) {
              for (var j in b.events)
                e[j] ? f.event.remove(i, j) : f.removeEvent(i, j, b.handle);
              b.handle && (b.handle.elem = null);
            }
            g
              ? delete i[f.expando]
              : i.removeAttribute && i.removeAttribute(f.expando),
              delete d[c];
          }
        }
      },
    });
  var bp = /alpha\([^)]*\)/i,
    bq = /opacity=([^)]*)/,
    br = /([A-Z]|^ms)/g,
    bs = /^[\-+]?(?:\d*\.)?\d+$/i,
    bt = /^-?(?:\d*\.)?\d+(?!px)[^\d\s]+$/i,
    bu = /^([\-+])=([\-+.\de]+)/,
    bv = /^margin/,
    bw = { position: "absolute", visibility: "hidden", display: "block" },
    bx = ["Top", "Right", "Bottom", "Left"],
    by,
    bz,
    bA;
  (f.fn.css = function (a, c) {
    return f.access(
      this,
      function (a, c, d) {
        return d !== b ? f.style(a, c, d) : f.css(a, c);
      },
      a,
      c,
      arguments.length > 1
    );
  }),
    f.extend({
      cssHooks: {
        opacity: {
          get: function (a, b) {
            if (b) {
              var c = by(a, "opacity");
              return c === "" ? "1" : c;
            }
            return a.style.opacity;
          },
        },
      },
      cssNumber: {
        fillOpacity: !0,
        fontWeight: !0,
        lineHeight: !0,
        opacity: !0,
        orphans: !0,
        widows: !0,
        zIndex: !0,
        zoom: !0,
      },
      cssProps: { float: f.support.cssFloat ? "cssFloat" : "styleFloat" },
      style: function (a, c, d, e) {
        if (!!a && a.nodeType !== 3 && a.nodeType !== 8 && !!a.style) {
          var g,
            h,
            i = f.camelCase(c),
            j = a.style,
            k = f.cssHooks[i];
          c = f.cssProps[i] || i;
          if (d === b) {
            if (k && "get" in k && (g = k.get(a, !1, e)) !== b) return g;
            return j[c];
          }
          (h = typeof d),
            h === "string" &&
              (g = bu.exec(d)) &&
              ((d = +(g[1] + 1) * +g[2] + parseFloat(f.css(a, c))),
              (h = "number"));
          if (d == null || (h === "number" && isNaN(d))) return;
          h === "number" && !f.cssNumber[i] && (d += "px");
          if (!k || !("set" in k) || (d = k.set(a, d)) !== b)
            try {
              j[c] = d;
            } catch (l) {}
        }
      },
      css: function (a, c, d) {
        var e, g;
        (c = f.camelCase(c)),
          (g = f.cssHooks[c]),
          (c = f.cssProps[c] || c),
          c === "cssFloat" && (c = "float");
        if (g && "get" in g && (e = g.get(a, !0, d)) !== b) return e;
        if (by) return by(a, c);
      },
      swap: function (a, b, c) {
        var d = {},
          e,
          f;
        for (f in b) (d[f] = a.style[f]), (a.style[f] = b[f]);
        e = c.call(a);
        for (f in b) a.style[f] = d[f];
        return e;
      },
    }),
    (f.curCSS = f.css),
    c.defaultView &&
      c.defaultView.getComputedStyle &&
      (bz = function (a, b) {
        var c,
          d,
          e,
          g,
          h = a.style;
        (b = b.replace(br, "-$1").toLowerCase()),
          (d = a.ownerDocument.defaultView) &&
            (e = d.getComputedStyle(a, null)) &&
            ((c = e.getPropertyValue(b)),
            c === "" &&
              !f.contains(a.ownerDocument.documentElement, a) &&
              (c = f.style(a, b))),
          !f.support.pixelMargin &&
            e &&
            bv.test(b) &&
            bt.test(c) &&
            ((g = h.width), (h.width = c), (c = e.width), (h.width = g));
        return c;
      }),
    c.documentElement.currentStyle &&
      (bA = function (a, b) {
        var c,
          d,
          e,
          f = a.currentStyle && a.currentStyle[b],
          g = a.style;
        f == null && g && (e = g[b]) && (f = e),
          bt.test(f) &&
            ((c = g.left),
            (d = a.runtimeStyle && a.runtimeStyle.left),
            d && (a.runtimeStyle.left = a.currentStyle.left),
            (g.left = b === "fontSize" ? "1em" : f),
            (f = g.pixelLeft + "px"),
            (g.left = c),
            d && (a.runtimeStyle.left = d));
        return f === "" ? "auto" : f;
      }),
    (by = bz || bA),
    f.each(["height", "width"], function (a, b) {
      f.cssHooks[b] = {
        get: function (a, c, d) {
          if (c)
            return a.offsetWidth !== 0
              ? bB(a, b, d)
              : f.swap(a, bw, function () {
                  return bB(a, b, d);
                });
        },
        set: function (a, b) {
          return bs.test(b) ? b + "px" : b;
        },
      };
    }),
    f.support.opacity ||
      (f.cssHooks.opacity = {
        get: function (a, b) {
          return bq.test(
            (b && a.currentStyle ? a.currentStyle.filter : a.style.filter) || ""
          )
            ? parseFloat(RegExp.$1) / 100 + ""
            : b
            ? "1"
            : "";
        },
        set: function (a, b) {
          var c = a.style,
            d = a.currentStyle,
            e = f.isNumeric(b) ? "alpha(opacity=" + b * 100 + ")" : "",
            g = (d && d.filter) || c.filter || "";
          c.zoom = 1;
          if (b >= 1 && f.trim(g.replace(bp, "")) === "") {
            c.removeAttribute("filter");
            if (d && !d.filter) return;
          }
          c.filter = bp.test(g) ? g.replace(bp, e) : g + " " + e;
        },
      }),
    f(function () {
      f.support.reliableMarginRight ||
        (f.cssHooks.marginRight = {
          get: function (a, b) {
            return f.swap(a, { display: "inline-block" }, function () {
              return b ? by(a, "margin-right") : a.style.marginRight;
            });
          },
        });
    }),
    f.expr &&
      f.expr.filters &&
      ((f.expr.filters.hidden = function (a) {
        var b = a.offsetWidth,
          c = a.offsetHeight;
        return (
          (b === 0 && c === 0) ||
          (!f.support.reliableHiddenOffsets &&
            ((a.style && a.style.display) || f.css(a, "display")) === "none")
        );
      }),
      (f.expr.filters.visible = function (a) {
        return !f.expr.filters.hidden(a);
      })),
    f.each({ margin: "", padding: "", border: "Width" }, function (a, b) {
      f.cssHooks[a + b] = {
        expand: function (c) {
          var d,
            e = typeof c == "string" ? c.split(" ") : [c],
            f = {};
          for (d = 0; d < 4; d++) f[a + bx[d] + b] = e[d] || e[d - 2] || e[0];
          return f;
        },
      };
    });
  var bC = /%20/g,
    bD = /\[\]$/,
    bE = /\r?\n/g,
    bF = /#.*$/,
    bG = /^(.*?):[ \t]*([^\r\n]*)\r?$/gm,
    bH = /^(?:color|date|datetime|datetime-local|email|hidden|month|number|password|range|search|tel|text|time|url|week)$/i,
    bI = /^(?:about|app|app\-storage|.+\-extension|file|res|widget):$/,
    bJ = /^(?:GET|HEAD)$/,
    bK = /^\/\//,
    bL = /\?/,
    bM = /<script\b[^<]*(?:(?!<\/script>)<[^<]*)*<\/script>/gi,
    bN = /^(?:select|textarea)/i,
    bO = /\s+/,
    bP = /([?&])_=[^&]*/,
    bQ = /^([\w\+\.\-]+:)(?:\/\/([^\/?#:]*)(?::(\d+))?)?/,
    bR = f.fn.load,
    bS = {},
    bT = {},
    bU,
    bV,
    bW = ["*/"] + ["*"];
  try {
    bU = e.href;
  } catch (bX) {
    (bU = c.createElement("a")), (bU.href = ""), (bU = bU.href);
  }
  (bV = bQ.exec(bU.toLowerCase()) || []),
    f.fn.extend({
      load: function (a, c, d) {
        if (typeof a != "string" && bR) return bR.apply(this, arguments);
        if (!this.length) return this;
        var e = a.indexOf(" ");
        if (e >= 0) {
          var g = a.slice(e, a.length);
          a = a.slice(0, e);
        }
        var h = "GET";
        c &&
          (f.isFunction(c)
            ? ((d = c), (c = b))
            : typeof c == "object" &&
              ((c = f.param(c, f.ajaxSettings.traditional)), (h = "POST")));
        var i = this;
        f.ajax({
          url: a,
          type: h,
          dataType: "html",
          data: c,
          complete: function (a, b, c) {
            (c = a.responseText),
              a.isResolved() &&
                (a.done(function (a) {
                  c = a;
                }),
                i.html(g ? f("<div>").append(c.replace(bM, "")).find(g) : c)),
              d && i.each(d, [c, b, a]);
          },
        });
        return this;
      },
      serialize: function () {
        return f.param(this.serializeArray());
      },
      serializeArray: function () {
        return this.map(function () {
          return this.elements ? f.makeArray(this.elements) : this;
        })
          .filter(function () {
            return (
              this.name &&
              !this.disabled &&
              (this.checked || bN.test(this.nodeName) || bH.test(this.type))
            );
          })
          .map(function (a, b) {
            var c = f(this).val();
            return c == null
              ? null
              : f.isArray(c)
              ? f.map(c, function (a, c) {
                  return { name: b.name, value: a.replace(bE, "\r\n") };
                })
              : { name: b.name, value: c.replace(bE, "\r\n") };
          })
          .get();
      },
    }),
    f.each(
      "ajaxStart ajaxStop ajaxComplete ajaxError ajaxSuccess ajaxSend".split(
        " "
      ),
      function (a, b) {
        f.fn[b] = function (a) {
          return this.on(b, a);
        };
      }
    ),
    f.each(["get", "post"], function (a, c) {
      f[c] = function (a, d, e, g) {
        f.isFunction(d) && ((g = g || e), (e = d), (d = b));
        return f.ajax({ type: c, url: a, data: d, success: e, dataType: g });
      };
    }),
    f.extend({
      getScript: function (a, c) {
        return f.get(a, b, c, "script");
      },
      getJSON: function (a, b, c) {
        return f.get(a, b, c, "json");
      },
      ajaxSetup: function (a, b) {
        b ? b$(a, f.ajaxSettings) : ((b = a), (a = f.ajaxSettings)), b$(a, b);
        return a;
      },
      ajaxSettings: {
        url: bU,
        isLocal: bI.test(bV[1]),
        global: !0,
        type: "GET",
        contentType: "application/x-www-form-urlencoded; charset=UTF-8",
        processData: !0,
        async: !0,
        accepts: {
          xml: "application/xml, text/xml",
          html: "text/html",
          text: "text/plain",
          json: "application/json, text/javascript",
          "*": bW,
        },
        contents: { xml: /xml/, html: /html/, json: /json/ },
        responseFields: { xml: "responseXML", text: "responseText" },
        converters: {
          "* text": a.String,
          "text html": !0,
          "text json": f.parseJSON,
          "text xml": f.parseXML,
        },
        flatOptions: { context: !0, url: !0 },
      },
      ajaxPrefilter: bY(bS),
      ajaxTransport: bY(bT),
      ajax: function (a, c) {
        function w(a, c, l, m) {
          if (s !== 2) {
            (s = 2),
              q && clearTimeout(q),
              (p = b),
              (n = m || ""),
              (v.readyState = a > 0 ? 4 : 0);
            var o,
              r,
              u,
              w = c,
              x = l ? ca(d, v, l) : b,
              y,
              z;
            if ((a >= 200 && a < 300) || a === 304) {
              if (d.ifModified) {
                if ((y = v.getResponseHeader("Last-Modified")))
                  f.lastModified[k] = y;
                if ((z = v.getResponseHeader("Etag"))) f.etag[k] = z;
              }
              if (a === 304) (w = "notmodified"), (o = !0);
              else
                try {
                  (r = cb(d, x)), (w = "success"), (o = !0);
                } catch (A) {
                  (w = "parsererror"), (u = A);
                }
            } else {
              u = w;
              if (!w || a) (w = "error"), a < 0 && (a = 0);
            }
            (v.status = a),
              (v.statusText = "" + (c || w)),
              o ? h.resolveWith(e, [r, w, v]) : h.rejectWith(e, [v, w, u]),
              v.statusCode(j),
              (j = b),
              t &&
                g.trigger("ajax" + (o ? "Success" : "Error"), [
                  v,
                  d,
                  o ? r : u,
                ]),
              i.fireWith(e, [v, w]),
              t &&
                (g.trigger("ajaxComplete", [v, d]),
                --f.active || f.event.trigger("ajaxStop"));
          }
        }
        typeof a == "object" && ((c = a), (a = b)), (c = c || {});
        var d = f.ajaxSetup({}, c),
          e = d.context || d,
          g = e !== d && (e.nodeType || e instanceof f) ? f(e) : f.event,
          h = f.Deferred(),
          i = f.Callbacks("once memory"),
          j = d.statusCode || {},
          k,
          l = {},
          m = {},
          n,
          o,
          p,
          q,
          r,
          s = 0,
          t,
          u,
          v = {
            readyState: 0,
            setRequestHeader: function (a, b) {
              if (!s) {
                var c = a.toLowerCase();
                (a = m[c] = m[c] || a), (l[a] = b);
              }
              return this;
            },
            getAllResponseHeaders: function () {
              return s === 2 ? n : null;
            },
            getResponseHeader: function (a) {
              var c;
              if (s === 2) {
                if (!o) {
                  o = {};
                  while ((c = bG.exec(n))) o[c[1].toLowerCase()] = c[2];
                }
                c = o[a.toLowerCase()];
              }
              return c === b ? null : c;
            },
            overrideMimeType: function (a) {
              s || (d.mimeType = a);
              return this;
            },
            abort: function (a) {
              (a = a || "abort"), p && p.abort(a), w(0, a);
              return this;
            },
          };
        h.promise(v),
          (v.success = v.done),
          (v.error = v.fail),
          (v.complete = i.add),
          (v.statusCode = function (a) {
            if (a) {
              var b;
              if (s < 2) for (b in a) j[b] = [j[b], a[b]];
              else (b = a[v.status]), v.then(b, b);
            }
            return this;
          }),
          (d.url = ((a || d.url) + "")
            .replace(bF, "")
            .replace(bK, bV[1] + "//")),
          (d.dataTypes = f
            .trim(d.dataType || "*")
            .toLowerCase()
            .split(bO)),
          d.crossDomain == null &&
            ((r = bQ.exec(d.url.toLowerCase())),
            (d.crossDomain = !(
              !r ||
              (r[1] == bV[1] &&
                r[2] == bV[2] &&
                (r[3] || (r[1] === "http:" ? 80 : 443)) ==
                  (bV[3] || (bV[1] === "http:" ? 80 : 443)))
            ))),
          d.data &&
            d.processData &&
            typeof d.data != "string" &&
            (d.data = f.param(d.data, d.traditional)),
          bZ(bS, d, c, v);
        if (s === 2) return !1;
        (t = d.global),
          (d.type = d.type.toUpperCase()),
          (d.hasContent = !bJ.test(d.type)),
          t && f.active++ === 0 && f.event.trigger("ajaxStart");
        if (!d.hasContent) {
          d.data &&
            ((d.url += (bL.test(d.url) ? "&" : "?") + d.data), delete d.data),
            (k = d.url);
          if (d.cache === !1) {
            var x = f.now(),
              y = d.url.replace(bP, "$1_=" + x);
            d.url =
              y + (y === d.url ? (bL.test(d.url) ? "&" : "?") + "_=" + x : "");
          }
        }
        ((d.data && d.hasContent && d.contentType !== !1) || c.contentType) &&
          v.setRequestHeader("Content-Type", d.contentType),
          d.ifModified &&
            ((k = k || d.url),
            f.lastModified[k] &&
              v.setRequestHeader("If-Modified-Since", f.lastModified[k]),
            f.etag[k] && v.setRequestHeader("If-None-Match", f.etag[k])),
          v.setRequestHeader(
            "Accept",
            d.dataTypes[0] && d.accepts[d.dataTypes[0]]
              ? d.accepts[d.dataTypes[0]] +
                  (d.dataTypes[0] !== "*" ? ", " + bW + "; q=0.01" : "")
              : d.accepts["*"]
          );
        for (u in d.headers) v.setRequestHeader(u, d.headers[u]);
        if (d.beforeSend && (d.beforeSend.call(e, v, d) === !1 || s === 2)) {
          v.abort();
          return !1;
        }
        for (u in { success: 1, error: 1, complete: 1 }) v[u](d[u]);
        p = bZ(bT, d, c, v);
        if (!p) w(-1, "No Transport");
        else {
          (v.readyState = 1),
            t && g.trigger("ajaxSend", [v, d]),
            d.async &&
              d.timeout > 0 &&
              (q = setTimeout(function () {
                v.abort("timeout");
              }, d.timeout));
          try {
            (s = 1), p.send(l, w);
          } catch (z) {
            if (s < 2) w(-1, z);
            else throw z;
          }
        }
        return v;
      },
      param: function (a, c) {
        var d = [],
          e = function (a, b) {
            (b = f.isFunction(b) ? b() : b),
              (d[d.length] =
                encodeURIComponent(a) + "=" + encodeURIComponent(b));
          };
        c === b && (c = f.ajaxSettings.traditional);
        if (f.isArray(a) || (a.jquery && !f.isPlainObject(a)))
          f.each(a, function () {
            e(this.name, this.value);
          });
        else for (var g in a) b_(g, a[g], c, e);
        return d.join("&").replace(bC, "+");
      },
    }),
    f.extend({ active: 0, lastModified: {}, etag: {} });
  var cc = f.now(),
    cd = /(\=)\?(&|$)|\?\?/i;
  f.ajaxSetup({
    jsonp: "callback",
    jsonpCallback: function () {
      return f.expando + "_" + cc++;
    },
  }),
    f.ajaxPrefilter("json jsonp", function (b, c, d) {
      var e =
        typeof b.data == "string" &&
        /^application\/x\-www\-form\-urlencoded/.test(b.contentType);
      if (
        b.dataTypes[0] === "jsonp" ||
        (b.jsonp !== !1 && (cd.test(b.url) || (e && cd.test(b.data))))
      ) {
        var g,
          h = (b.jsonpCallback = f.isFunction(b.jsonpCallback)
            ? b.jsonpCallback()
            : b.jsonpCallback),
          i = a[h],
          j = b.url,
          k = b.data,
          l = "$1" + h + "$2";
        b.jsonp !== !1 &&
          ((j = j.replace(cd, l)),
          b.url === j &&
            (e && (k = k.replace(cd, l)),
            b.data === k &&
              (j += (/\?/.test(j) ? "&" : "?") + b.jsonp + "=" + h))),
          (b.url = j),
          (b.data = k),
          (a[h] = function (a) {
            g = [a];
          }),
          d.always(function () {
            (a[h] = i), g && f.isFunction(i) && a[h](g[0]);
          }),
          (b.converters["script json"] = function () {
            g || f.error(h + " was not called");
            return g[0];
          }),
          (b.dataTypes[0] = "json");
        return "script";
      }
    }),
    f.ajaxSetup({
      accepts: {
        script:
          "text/javascript, application/javascript, application/ecmascript, application/x-ecmascript",
      },
      contents: { script: /javascript|ecmascript/ },
      converters: {
        "text script": function (a) {
          f.globalEval(a);
          return a;
        },
      },
    }),
    f.ajaxPrefilter("script", function (a) {
      a.cache === b && (a.cache = !1),
        a.crossDomain && ((a.type = "GET"), (a.global = !1));
    }),
    f.ajaxTransport("script", function (a) {
      if (a.crossDomain) {
        var d,
          e = c.head || c.getElementsByTagName("head")[0] || c.documentElement;
        return {
          send: function (f, g) {
            (d = c.createElement("script")),
              (d.async = "async"),
              a.scriptCharset && (d.charset = a.scriptCharset),
              (d.src = a.url),
              (d.onload = d.onreadystatechange = function (a, c) {
                if (c || !d.readyState || /loaded|complete/.test(d.readyState))
                  (d.onload = d.onreadystatechange = null),
                    e && d.parentNode && e.removeChild(d),
                    (d = b),
                    c || g(200, "success");
              }),
              e.insertBefore(d, e.firstChild);
          },
          abort: function () {
            d && d.onload(0, 1);
          },
        };
      }
    });
  var ce = a.ActiveXObject
      ? function () {
          for (var a in cg) cg[a](0, 1);
        }
      : !1,
    cf = 0,
    cg;
  (f.ajaxSettings.xhr = a.ActiveXObject
    ? function () {
        return (!this.isLocal && ch()) || ci();
      }
    : ch),
    (function (a) {
      f.extend(f.support, { ajax: !!a, cors: !!a && "withCredentials" in a });
    })(f.ajaxSettings.xhr()),
    f.support.ajax &&
      f.ajaxTransport(function (c) {
        if (!c.crossDomain || f.support.cors) {
          var d;
          return {
            send: function (e, g) {
              var h = c.xhr(),
                i,
                j;
              c.username
                ? h.open(c.type, c.url, c.async, c.username, c.password)
                : h.open(c.type, c.url, c.async);
              if (c.xhrFields) for (j in c.xhrFields) h[j] = c.xhrFields[j];
              c.mimeType &&
                h.overrideMimeType &&
                h.overrideMimeType(c.mimeType),
                !c.crossDomain &&
                  !e["X-Requested-With"] &&
                  (e["X-Requested-With"] = "XMLHttpRequest");
              try {
                for (j in e) h.setRequestHeader(j, e[j]);
              } catch (k) {}
              h.send((c.hasContent && c.data) || null),
                (d = function (a, e) {
                  var j, k, l, m, n;
                  try {
                    if (d && (e || h.readyState === 4)) {
                      (d = b),
                        i &&
                          ((h.onreadystatechange = f.noop), ce && delete cg[i]);
                      if (e) h.readyState !== 4 && h.abort();
                      else {
                        (j = h.status),
                          (l = h.getAllResponseHeaders()),
                          (m = {}),
                          (n = h.responseXML),
                          n && n.documentElement && (m.xml = n);
                        try {
                          m.text = h.responseText;
                        } catch (a) {}
                        try {
                          k = h.statusText;
                        } catch (o) {
                          k = "";
                        }
                        !j && c.isLocal && !c.crossDomain
                          ? (j = m.text ? 200 : 404)
                          : j === 1223 && (j = 204);
                      }
                    }
                  } catch (p) {
                    e || g(-1, p);
                  }
                  m && g(j, k, m, l);
                }),
                !c.async || h.readyState === 4
                  ? d()
                  : ((i = ++cf),
                    ce && (cg || ((cg = {}), f(a).unload(ce)), (cg[i] = d)),
                    (h.onreadystatechange = d));
            },
            abort: function () {
              d && d(0, 1);
            },
          };
        }
      });
  var cj = {},
    ck,
    cl,
    cm = /^(?:toggle|show|hide)$/,
    cn = /^([+\-]=)?([\d+.\-]+)([a-z%]*)$/i,
    co,
    cp = [
      ["height", "marginTop", "marginBottom", "paddingTop", "paddingBottom"],
      ["width", "marginLeft", "marginRight", "paddingLeft", "paddingRight"],
      ["opacity"],
    ],
    cq;
  f.fn.extend({
    show: function (a, b, c) {
      var d, e;
      if (a || a === 0) return this.animate(ct("show", 3), a, b, c);
      for (var g = 0, h = this.length; g < h; g++)
        (d = this[g]),
          d.style &&
            ((e = d.style.display),
            !f._data(d, "olddisplay") &&
              e === "none" &&
              (e = d.style.display = ""),
            ((e === "" && f.css(d, "display") === "none") ||
              !f.contains(d.ownerDocument.documentElement, d)) &&
              f._data(d, "olddisplay", cu(d.nodeName)));
      for (g = 0; g < h; g++) {
        d = this[g];
        if (d.style) {
          e = d.style.display;
          if (e === "" || e === "none")
            d.style.display = f._data(d, "olddisplay") || "";
        }
      }
      return this;
    },
    hide: function (a, b, c) {
      if (a || a === 0) return this.animate(ct("hide", 3), a, b, c);
      var d,
        e,
        g = 0,
        h = this.length;
      for (; g < h; g++)
        (d = this[g]),
          d.style &&
            ((e = f.css(d, "display")),
            e !== "none" &&
              !f._data(d, "olddisplay") &&
              f._data(d, "olddisplay", e));
      for (g = 0; g < h; g++) this[g].style && (this[g].style.display = "none");
      return this;
    },
    _toggle: f.fn.toggle,
    toggle: function (a, b, c) {
      var d = typeof a == "boolean";
      f.isFunction(a) && f.isFunction(b)
        ? this._toggle.apply(this, arguments)
        : a == null || d
        ? this.each(function () {
            var b = d ? a : f(this).is(":hidden");
            f(this)[b ? "show" : "hide"]();
          })
        : this.animate(ct("toggle", 3), a, b, c);
      return this;
    },
    fadeTo: function (a, b, c, d) {
      return this.filter(":hidden")
        .css("opacity", 0)
        .show()
        .end()
        .animate({ opacity: b }, a, c, d);
    },
    animate: function (a, b, c, d) {
      function g() {
        e.queue === !1 && f._mark(this);
        var b = f.extend({}, e),
          c = this.nodeType === 1,
          d = c && f(this).is(":hidden"),
          g,
          h,
          i,
          j,
          k,
          l,
          m,
          n,
          o,
          p,
          q;
        b.animatedProperties = {};
        for (i in a) {
          (g = f.camelCase(i)), i !== g && ((a[g] = a[i]), delete a[i]);
          if ((k = f.cssHooks[g]) && "expand" in k) {
            (l = k.expand(a[g])), delete a[g];
            for (i in l) i in a || (a[i] = l[i]);
          }
        }
        for (g in a) {
          (h = a[g]),
            f.isArray(h)
              ? ((b.animatedProperties[g] = h[1]), (h = a[g] = h[0]))
              : (b.animatedProperties[g] =
                  (b.specialEasing && b.specialEasing[g]) ||
                  b.easing ||
                  "swing");
          if ((h === "hide" && d) || (h === "show" && !d))
            return b.complete.call(this);
          c &&
            (g === "height" || g === "width") &&
            ((b.overflow = [
              this.style.overflow,
              this.style.overflowX,
              this.style.overflowY,
            ]),
            f.css(this, "display") === "inline" &&
              f.css(this, "float") === "none" &&
              (!f.support.inlineBlockNeedsLayout ||
              cu(this.nodeName) === "inline"
                ? (this.style.display = "inline-block")
                : (this.style.zoom = 1)));
        }
        b.overflow != null && (this.style.overflow = "hidden");
        for (i in a)
          (j = new f.fx(this, b, i)),
            (h = a[i]),
            cm.test(h)
              ? ((q =
                  f._data(this, "toggle" + i) ||
                  (h === "toggle" ? (d ? "show" : "hide") : 0)),
                q
                  ? (f._data(
                      this,
                      "toggle" + i,
                      q === "show" ? "hide" : "show"
                    ),
                    j[q]())
                  : j[h]())
              : ((m = cn.exec(h)),
                (n = j.cur()),
                m
                  ? ((o = parseFloat(m[2])),
                    (p = m[3] || (f.cssNumber[i] ? "" : "px")),
                    p !== "px" &&
                      (f.style(this, i, (o || 1) + p),
                      (n = ((o || 1) / j.cur()) * n),
                      f.style(this, i, n + p)),
                    m[1] && (o = (m[1] === "-=" ? -1 : 1) * o + n),
                    j.custom(n, o, p))
                  : j.custom(n, h, ""));
        return !0;
      }
      var e = f.speed(b, c, d);
      if (f.isEmptyObject(a)) return this.each(e.complete, [!1]);
      a = f.extend({}, a);
      return e.queue === !1 ? this.each(g) : this.queue(e.queue, g);
    },
    stop: function (a, c, d) {
      typeof a != "string" && ((d = c), (c = a), (a = b)),
        c && a !== !1 && this.queue(a || "fx", []);
      return this.each(function () {
        function h(a, b, c) {
          var e = b[c];
          f.removeData(a, c, !0), e.stop(d);
        }
        var b,
          c = !1,
          e = f.timers,
          g = f._data(this);
        d || f._unmark(!0, this);
        if (a == null)
          for (b in g)
            g[b] &&
              g[b].stop &&
              b.indexOf(".run") === b.length - 4 &&
              h(this, g, b);
        else g[(b = a + ".run")] && g[b].stop && h(this, g, b);
        for (b = e.length; b--; )
          e[b].elem === this &&
            (a == null || e[b].queue === a) &&
            (d ? e[b](!0) : e[b].saveState(), (c = !0), e.splice(b, 1));
        (!d || !c) && f.dequeue(this, a);
      });
    },
  }),
    f.each(
      {
        slideDown: ct("show", 1),
        slideUp: ct("hide", 1),
        slideToggle: ct("toggle", 1),
        fadeIn: { opacity: "show" },
        fadeOut: { opacity: "hide" },
        fadeToggle: { opacity: "toggle" },
      },
      function (a, b) {
        f.fn[a] = function (a, c, d) {
          return this.animate(b, a, c, d);
        };
      }
    ),
    f.extend({
      speed: function (a, b, c) {
        var d =
          a && typeof a == "object"
            ? f.extend({}, a)
            : {
                complete: c || (!c && b) || (f.isFunction(a) && a),
                duration: a,
                easing: (c && b) || (b && !f.isFunction(b) && b),
              };
        d.duration = f.fx.off
          ? 0
          : typeof d.duration == "number"
          ? d.duration
          : d.duration in f.fx.speeds
          ? f.fx.speeds[d.duration]
          : f.fx.speeds._default;
        if (d.queue == null || d.queue === !0) d.queue = "fx";
        (d.old = d.complete),
          (d.complete = function (a) {
            f.isFunction(d.old) && d.old.call(this),
              d.queue ? f.dequeue(this, d.queue) : a !== !1 && f._unmark(this);
          });
        return d;
      },
      easing: {
        linear: function (a) {
          return a;
        },
        swing: function (a) {
          return -Math.cos(a * Math.PI) / 2 + 0.5;
        },
      },
      timers: [],
      fx: function (a, b, c) {
        (this.options = b),
          (this.elem = a),
          (this.prop = c),
          (b.orig = b.orig || {});
      },
    }),
    (f.fx.prototype = {
      update: function () {
        this.options.step && this.options.step.call(this.elem, this.now, this),
          (f.fx.step[this.prop] || f.fx.step._default)(this);
      },
      cur: function () {
        if (
          this.elem[this.prop] != null &&
          (!this.elem.style || this.elem.style[this.prop] == null)
        )
          return this.elem[this.prop];
        var a,
          b = f.css(this.elem, this.prop);
        return isNaN((a = parseFloat(b))) ? (!b || b === "auto" ? 0 : b) : a;
      },
      custom: function (a, c, d) {
        function h(a) {
          return e.step(a);
        }
        var e = this,
          g = f.fx;
        (this.startTime = cq || cr()),
          (this.end = c),
          (this.now = this.start = a),
          (this.pos = this.state = 0),
          (this.unit = d || this.unit || (f.cssNumber[this.prop] ? "" : "px")),
          (h.queue = this.options.queue),
          (h.elem = this.elem),
          (h.saveState = function () {
            f._data(e.elem, "fxshow" + e.prop) === b &&
              (e.options.hide
                ? f._data(e.elem, "fxshow" + e.prop, e.start)
                : e.options.show && f._data(e.elem, "fxshow" + e.prop, e.end));
          }),
          h() &&
            f.timers.push(h) &&
            !co &&
            (co = setInterval(g.tick, g.interval));
      },
      show: function () {
        var a = f._data(this.elem, "fxshow" + this.prop);
        (this.options.orig[this.prop] = a || f.style(this.elem, this.prop)),
          (this.options.show = !0),
          a !== b
            ? this.custom(this.cur(), a)
            : this.custom(
                this.prop === "width" || this.prop === "height" ? 1 : 0,
                this.cur()
              ),
          f(this.elem).show();
      },
      hide: function () {
        (this.options.orig[this.prop] =
          f._data(this.elem, "fxshow" + this.prop) ||
          f.style(this.elem, this.prop)),
          (this.options.hide = !0),
          this.custom(this.cur(), 0);
      },
      step: function (a) {
        var b,
          c,
          d,
          e = cq || cr(),
          g = !0,
          h = this.elem,
          i = this.options;
        if (a || e >= i.duration + this.startTime) {
          (this.now = this.end),
            (this.pos = this.state = 1),
            this.update(),
            (i.animatedProperties[this.prop] = !0);
          for (b in i.animatedProperties)
            i.animatedProperties[b] !== !0 && (g = !1);
          if (g) {
            i.overflow != null &&
              !f.support.shrinkWrapBlocks &&
              f.each(["", "X", "Y"], function (a, b) {
                h.style["overflow" + b] = i.overflow[a];
              }),
              i.hide && f(h).hide();
            if (i.hide || i.show)
              for (b in i.animatedProperties)
                f.style(h, b, i.orig[b]),
                  f.removeData(h, "fxshow" + b, !0),
                  f.removeData(h, "toggle" + b, !0);
            (d = i.complete), d && ((i.complete = !1), d.call(h));
          }
          return !1;
        }
        i.duration == Infinity
          ? (this.now = e)
          : ((c = e - this.startTime),
            (this.state = c / i.duration),
            (this.pos = f.easing[i.animatedProperties[this.prop]](
              this.state,
              c,
              0,
              1,
              i.duration
            )),
            (this.now = this.start + (this.end - this.start) * this.pos)),
          this.update();
        return !0;
      },
    }),
    f.extend(f.fx, {
      tick: function () {
        var a,
          b = f.timers,
          c = 0;
        for (; c < b.length; c++)
          (a = b[c]), !a() && b[c] === a && b.splice(c--, 1);
        b.length || f.fx.stop();
      },
      interval: 13,
      stop: function () {
        clearInterval(co), (co = null);
      },
      speeds: { slow: 600, fast: 200, _default: 400 },
      step: {
        opacity: function (a) {
          f.style(a.elem, "opacity", a.now);
        },
        _default: function (a) {
          a.elem.style && a.elem.style[a.prop] != null
            ? (a.elem.style[a.prop] = a.now + a.unit)
            : (a.elem[a.prop] = a.now);
        },
      },
    }),
    f.each(cp.concat.apply([], cp), function (a, b) {
      b.indexOf("margin") &&
        (f.fx.step[b] = function (a) {
          f.style(a.elem, b, Math.max(0, a.now) + a.unit);
        });
    }),
    f.expr &&
      f.expr.filters &&
      (f.expr.filters.animated = function (a) {
        return f.grep(f.timers, function (b) {
          return a === b.elem;
        }).length;
      });
  var cv,
    cw = /^t(?:able|d|h)$/i,
    cx = /^(?:body|html)$/i;
  "getBoundingClientRect" in c.documentElement
    ? (cv = function (a, b, c, d) {
        try {
          d = a.getBoundingClientRect();
        } catch (e) {}
        if (!d || !f.contains(c, a))
          return d ? { top: d.top, left: d.left } : { top: 0, left: 0 };
        var g = b.body,
          h = cy(b),
          i = c.clientTop || g.clientTop || 0,
          j = c.clientLeft || g.clientLeft || 0,
          k =
            h.pageYOffset || (f.support.boxModel && c.scrollTop) || g.scrollTop,
          l =
            h.pageXOffset ||
            (f.support.boxModel && c.scrollLeft) ||
            g.scrollLeft,
          m = d.top + k - i,
          n = d.left + l - j;
        return { top: m, left: n };
      })
    : (cv = function (a, b, c) {
        var d,
          e = a.offsetParent,
          g = a,
          h = b.body,
          i = b.defaultView,
          j = i ? i.getComputedStyle(a, null) : a.currentStyle,
          k = a.offsetTop,
          l = a.offsetLeft;
        while ((a = a.parentNode) && a !== h && a !== c) {
          if (f.support.fixedPosition && j.position === "fixed") break;
          (d = i ? i.getComputedStyle(a, null) : a.currentStyle),
            (k -= a.scrollTop),
            (l -= a.scrollLeft),
            a === e &&
              ((k += a.offsetTop),
              (l += a.offsetLeft),
              f.support.doesNotAddBorder &&
                (!f.support.doesAddBorderForTableAndCells ||
                  !cw.test(a.nodeName)) &&
                ((k += parseFloat(d.borderTopWidth) || 0),
                (l += parseFloat(d.borderLeftWidth) || 0)),
              (g = e),
              (e = a.offsetParent)),
            f.support.subtractsBorderForOverflowNotVisible &&
              d.overflow !== "visible" &&
              ((k += parseFloat(d.borderTopWidth) || 0),
              (l += parseFloat(d.borderLeftWidth) || 0)),
            (j = d);
        }
        if (j.position === "relative" || j.position === "static")
          (k += h.offsetTop), (l += h.offsetLeft);
        f.support.fixedPosition &&
          j.position === "fixed" &&
          ((k += Math.max(c.scrollTop, h.scrollTop)),
          (l += Math.max(c.scrollLeft, h.scrollLeft)));
        return { top: k, left: l };
      }),
    (f.fn.offset = function (a) {
      if (arguments.length)
        return a === b
          ? this
          : this.each(function (b) {
              f.offset.setOffset(this, a, b);
            });
      var c = this[0],
        d = c && c.ownerDocument;
      if (!d) return null;
      if (c === d.body) return f.offset.bodyOffset(c);
      return cv(c, d, d.documentElement);
    }),
    (f.offset = {
      bodyOffset: function (a) {
        var b = a.offsetTop,
          c = a.offsetLeft;
        f.support.doesNotIncludeMarginInBodyOffset &&
          ((b += parseFloat(f.css(a, "marginTop")) || 0),
          (c += parseFloat(f.css(a, "marginLeft")) || 0));
        return { top: b, left: c };
      },
      setOffset: function (a, b, c) {
        var d = f.css(a, "position");
        d === "static" && (a.style.position = "relative");
        var e = f(a),
          g = e.offset(),
          h = f.css(a, "top"),
          i = f.css(a, "left"),
          j =
            (d === "absolute" || d === "fixed") &&
            f.inArray("auto", [h, i]) > -1,
          k = {},
          l = {},
          m,
          n;
        j
          ? ((l = e.position()), (m = l.top), (n = l.left))
          : ((m = parseFloat(h) || 0), (n = parseFloat(i) || 0)),
          f.isFunction(b) && (b = b.call(a, c, g)),
          b.top != null && (k.top = b.top - g.top + m),
          b.left != null && (k.left = b.left - g.left + n),
          "using" in b ? b.using.call(a, k) : e.css(k);
      },
    }),
    f.fn.extend({
      position: function () {
        if (!this[0]) return null;
        var a = this[0],
          b = this.offsetParent(),
          c = this.offset(),
          d = cx.test(b[0].nodeName) ? { top: 0, left: 0 } : b.offset();
        (c.top -= parseFloat(f.css(a, "marginTop")) || 0),
          (c.left -= parseFloat(f.css(a, "marginLeft")) || 0),
          (d.top += parseFloat(f.css(b[0], "borderTopWidth")) || 0),
          (d.left += parseFloat(f.css(b[0], "borderLeftWidth")) || 0);
        return { top: c.top - d.top, left: c.left - d.left };
      },
      offsetParent: function () {
        return this.map(function () {
          var a = this.offsetParent || c.body;
          while (a && !cx.test(a.nodeName) && f.css(a, "position") === "static")
            a = a.offsetParent;
          return a;
        });
      },
    }),
    f.each(
      { scrollLeft: "pageXOffset", scrollTop: "pageYOffset" },
      function (a, c) {
        var d = /Y/.test(c);
        f.fn[a] = function (e) {
          return f.access(
            this,
            function (a, e, g) {
              var h = cy(a);
              if (g === b)
                return h
                  ? c in h
                    ? h[c]
                    : (f.support.boxModel && h.document.documentElement[e]) ||
                      h.document.body[e]
                  : a[e];
              h
                ? h.scrollTo(
                    d ? f(h).scrollLeft() : g,
                    d ? g : f(h).scrollTop()
                  )
                : (a[e] = g);
            },
            a,
            e,
            arguments.length,
            null
          );
        };
      }
    ),
    f.each({ Height: "height", Width: "width" }, function (a, c) {
      var d = "client" + a,
        e = "scroll" + a,
        g = "offset" + a;
      (f.fn["inner" + a] = function () {
        var a = this[0];
        return a
          ? a.style
            ? parseFloat(f.css(a, c, "padding"))
            : this[c]()
          : null;
      }),
        (f.fn["outer" + a] = function (a) {
          var b = this[0];
          return b
            ? b.style
              ? parseFloat(f.css(b, c, a ? "margin" : "border"))
              : this[c]()
            : null;
        }),
        (f.fn[c] = function (a) {
          return f.access(
            this,
            function (a, c, h) {
              var i, j, k, l;
              if (f.isWindow(a)) {
                (i = a.document), (j = i.documentElement[d]);
                return (f.support.boxModel && j) || (i.body && i.body[d]) || j;
              }
              if (a.nodeType === 9) {
                i = a.documentElement;
                if (i[d] >= i[e]) return i[d];
                return Math.max(a.body[e], i[e], a.body[g], i[g]);
              }
              if (h === b) {
                (k = f.css(a, c)), (l = parseFloat(k));
                return f.isNumeric(l) ? l : k;
              }
              f(a).css(c, h);
            },
            c,
            a,
            arguments.length,
            null
          );
        });
    }),
    (a.jQuery = a.$ = f),
    typeof define == "function" &&
      define.amd &&
      define.amd.jQuery &&
      define("jquery", [], function () {
        return f;
      });
})(window);
var console = console || {};
console.log = console.log || function () {};
console.info = console.info || function () {};
var fun_pc = [];
var fun_pc_large = [];
var fun_tablet = [];
var fun_mobile = [];
app_shop.vars.xhr = "";
app_shop.getFile = function (name) {
  $.getScript(app_shop.urls.prefix + name + ".js");
};
app_shop.getOuterJS = function (list) {
  for (var key in list) {
    $.getScript(app_shop.urls.prefix + list[key] + ".js", function () {
      console.log("file: " + list[key]);
    });
  }
};
app_shop.run = function (fun, mode, wrapper, ajax) {
  if ($.isArray(mode)) {
    for (i in mode) {
      if (!app_shop.fnrun[mode[i]]) app_shop.fnrun[mode[i]] = [];
      app_shop.fnrun[mode[i]].push({ w: wrapper, fn: fun, a: ajax });
    }
  } else {
    if (!app_shop.fnrun[mode]) app_shop.fnrun[mode] = [];
    app_shop.fnrun[mode].push({ w: wrapper, fn: fun, a: ajax });
  }
};
app_shop.runArr = function (arr, mode, ajax) {
  if (arr) {
    var i,
      z = 0;
    for (i = 0, z = arr.length; i < z; i++) {
      var w = arr[i].w;
      var fn = arr[i].fn;
      var a = arr[i].a;
      if (ajax) {
        if (w) {
          if ($(w).size() && a) {
            fn();
            console.log("mode " + mode + ":" + w);
          }
        } else {
          if (a) {
            fn();
            console.log("mode " + mode + ":" + w);
          }
        }
      } else {
        if (w) {
          if ($(w).size()) {
            fn();
            console.log("mode " + mode + ":" + w);
          }
        } else {
          fn();
          console.log("mode " + mode + ":" + w);
        }
      }
    }
  }
};
function _instanceof(left, right) {
  if (
    right != null &&
    typeof Symbol !== "undefined" &&
    right[Symbol.hasInstance]
  ) {
    return right[Symbol.hasInstance](left);
  } else {
    return left instanceof right;
  }
}
function _classCallCheck(instance, Constructor) {
  if (!_instanceof(instance, Constructor)) {
    throw new TypeError("Cannot call a class as a function");
  }
}
function _defineProperties(target, props) {
  for (var i = 0; i < props.length; i++) {
    var descriptor = props[i];
    descriptor.enumerable = descriptor.enumerable || false;
    descriptor.configurable = true;
    if ("value" in descriptor) descriptor.writable = true;
    Object.defineProperty(target, descriptor.key, descriptor);
  }
}
function _createClass(Constructor, protoProps, staticProps) {
  if (protoProps) _defineProperties(Constructor.prototype, protoProps);
  if (staticProps) _defineProperties(Constructor, staticProps);
  return Constructor;
}
var iaiGetAjax = (function () {
  function iaiGetAjax(params) {
    _classCallCheck(this, iaiGetAjax);
    this.data = {};
    this.cache = {};
    this.fn = [];
  }
  _createClass(iaiGetAjax, [
    {
      key: "projector",
      value: function projector() {
        this.data.Projector = { format: "json", params: {} };
        this.fn.push(fn);
      },
    },
    {
      key: "basket",
      value: function basket(fn) {
        this.data.Basket = {};
        this.fn.push(fn);
      },
    },
    {
      key: "wishlist",
      value: function wishlist(fn) {
        this.data.Wishlist = {};
        this.fn.push(fn);
      },
    },
    {
      key: "comparers",
      value: function comparers(fn) {
        this.data.Comparers = {};
        this.fn.push(fn);
      },
    },
    {
      key: "snippets",
      value: function snippets(fn, arg) {
        if (!this.data.Snippets) {
          this.data.Snippets = {
            format: "json",
            params: {
              mobile: arg.mobile,
              tablet: arg.tablet,
              pc: arg.pc,
              request_uri: arg.request_uri,
              additional_ajax: arg.additional_ajax,
            },
          };
        } else {
          console.log("Snippets data exist");
        }
        this.fn.push(fn);
      },
    },
    {
      key: "toplayersAndWidgets",
      value: function toplayersAndWidgets(fn, arg) {
        if (!this.data.ToplayersAndWidgets) {
          this.data.ToplayersAndWidgets = {
            format: "json",
            params: {
              mobile: arg.mobile,
              tablet: arg.tablet,
              pc: arg.pc,
              request_uri: arg.request_uri,
              additional_ajax: arg.additional_ajax,
            },
          };
        } else {
          console.log("ToplayersAndWidgets data exist");
        }
        this.fn.push(fn);
      },
    },
    { key: "hotspot", value: function hotspot(fn, arg) {} },
    { key: "hotspotMain", value: function hotspotMain(fn, arg) {} },
    { key: "hotspotProjector", value: function hotspotProjector(fn, arg) {} },
    { key: "hotspotSearch", value: function hotspotSearch(fn, arg) {} },
    {
      key: "init",
      value: function init() {
        var request = "request=" + JSON.stringify(this.data);
        var that = this;
        $.ajax({
          type: "POST",
          url: "/ajax/get.php",
          dataType: "JSON",
          data: request,
          success: function success(json) {
            that.cache = json;
            that.fn.forEach(function (element) {
              element(that.cache);
            });
          },
          error: function error() {},
        });
      },
    },
  ]);
  return iaiGetAjax;
})();
var iaiGet = new iaiGetAjax();
app_shop.fn.change_url = function (url) {
  if (history.pushState) {
    history.pushState({ foo: "bar" }, "", decodeURIComponent(url));
  }
};
app_shop.fn.evalJSFromHtml = function (html) {
  var newElement = document.createElement("div");
  newElement.innerHTML = html;
  var result = newElement.getElementsByTagName("script");
  var scripts = [];
  for (var i = 0; i < result.length; ++i) {
    if (
      result[i].tagName === "SCRIPT" &&
      (result[i].className == "ajaxLoad" ||
        result[i].parentNode.className == "ajaxLoad")
    ) {
      scripts.push(result[i]);
    }
  }
  $("body").append(scripts);
};
app_shop.fn.load = function (_url, target, callback, paramets) {
  if (app_shop.vars.xhr && app_shop.vars.xhr.readystate != 4) {
    app_shop.vars.xhr.abort();
  }
  $(target).addClass("load-content");
  for (var i = 0; target.length > i; i++) {
    $(target[i][0]).addClass("load-content");
  }
  app_shop.vars.xhr = $.ajax({
    url: _url + paramets,
    timeout: 16000,
    success: function (data, textStatus) {
      for (var i = 0; target.length > i; i++) {
        $(target[i][0])
          .removeClass("load-content")
          .html($(data).find(target[i][1]).html());
      }
      app_shop.fn.change_url(_url);
      app_shop.fn.evalJSFromHtml(data);
      if (callback) callback();
    },
    error: function (data) {
      window.location.href = _url;
    },
  });
};
app_shop.fn.variety = function (value, single, plural) {
  return value == 1 ? single : plural;
};
app_shop.fn.setGrid = function () {
  if (app_shop.vars.view == 1) {
    $(".setMobileGrid").each(function () {
      var name = $(this).data("item");
      $(name).before(
        '<del class="domHandler" data-item="' + name + '" style="display:none">'
      );
      $(this).append($(name));
    });
  } else {
    $(".domHandler").each(function () {
      var name = $(this).data("item");
      $(this).after($(name));
      $(this).remove();
    });
  }
};
app_shop.fn.runAjaxFn = function () {
  app_shop.vars.view = $("#viewType").width();
  var tmpView = app_shop.vars.view;
  app_shop.runArr(app_shop.fnrun["all"], "all", true);
  if (!app_shop.vars.view) return false;
  app_shop.runArr(app_shop.fnrun[app_shop.vars.view], app_shop.vars.view, true);
};
app_shop.runApp = function () {
  app_shop.vars.view = $("#viewType").width();
  var tmpView = app_shop.vars.view;
  app_shop.runArr(app_shop.fnrun["all"], "all");
  if (!app_shop.vars.view) return false;
  app_shop.runArr(app_shop.fnrun[app_shop.vars.view], app_shop.vars.view);
  app_shop.fn.setGrid();
  $(window).off("resize.view");
  $(window).on("resize.view", function () {
    app_shop.vars.view = $("#viewType").width();
    if (app_shop.vars.view != tmpView) {
      tmpView = app_shop.vars.view;
      app_shop.runArr(app_shop.fnrun[app_shop.vars.view], app_shop.vars.view);
      app_shop.fn.setGrid();
    }
  });
  app_shop.getOuterJS(app_shop.files);
  iaiGet.init();
};
app_shop.fn.getRwdSrc = function (obj) {
  var rwd_src = [
    obj.data("src_mobile"),
    obj.data("src_tablet"),
    obj.data("src_desktop"),
    obj.data("src_desktop"),
  ];
  var src = rwd_src[app_shop.vars.view - 1];
  if (!src) {
    rwd_src = rwd_src.join(" ").split(" ");
    if (rwd_src.length) {
      if (app_shop.vars.view == 1) {
        src = rwd_src[0];
      } else {
        src = rwd_src.pop();
      }
    }
  }
  return src;
};
app_shop.fn.rwdBanner = function (name, view) {
  for (i in view) {
    app_shop.run(
      function () {
        $(name)
          .find("img.rwd-src")
          .each(function () {
            $this = $(this);
            $this.attr("src", app_shop.fn.getRwdSrc($this));
          });
      },
      view[i],
      name
    );
  }
};
(function ($) {
  $.fn.iai_align = function () {
    return this.each(function () {
      if ($(this).data("align")) {
        var options = $(this).data("align").split("|");
        var selector = "";
        var type = "";
        var maxHeight = 0;
        var $this = $(this);
        for (i in options) {
          option = options[i].split("#");
          selector = option[0];
          type = option[1] || "px";
          if (type == "px") {
            var maxHeight = Math.max.apply(
              null,
              $this
                .find(selector)
                .map(function () {
                  return $(this).outerHeight();
                })
                .get()
            );
            $this.find(selector).css("min-height", maxHeight);
          } else {
            $this.find(selector).each(function () {
              $(this).wrap(
                '<div style="display: table;width:100%;height:100%;table-layout: fixed;"><div style="display: table-cell;vertical-align: middle;min-height:100%">'
              );
            });
          }
        }
      }
    });
  };
})(jQuery);
String.prototype.format = function () {
  var a = this,
    b;
  for (b in arguments) {
    a = a.replace(/%[a-z]/, arguments[b]);
  }
  return a;
};
app_shop.fn.news_data = function (data) {
  var arr = "";
  if (!(data.data && (arr = data.data.split("-"))) || arr.length < 3)
    return false;
  var formatted = data.format || "%d-%m-%y";
  if (data.month_names) arr[1] = data.month_names[parseInt(arr[1]) - 1];
  return formatted.format(arr[2], arr[1], arr[0]);
};
!(function (i) {
  "use strict";
  "function" == typeof define && define.amd
    ? define(["jquery"], i)
    : "undefined" != typeof exports
    ? (module.exports = i(require("jquery")))
    : i(jQuery);
})(function (i) {
  "use strict";
  var e = window.Slick || {};
  ((e = (function () {
    var e = 0;
    return function (t, o) {
      var s,
        n = this;
      (n.defaults = {
        accessibility: !0,
        adaptiveHeight: !1,
        appendArrows: i(t),
        appendDots: i(t),
        arrows: !0,
        asNavFor: null,
        prevArrow:
          '<button class="slick-prev" aria-label="Previous" type="button">Previous</button>',
        nextArrow:
          '<button class="slick-next" aria-label="Next" type="button">Next</button>',
        autoplay: !1,
        autoplaySpeed: 3e3,
        centerMode: !1,
        centerPadding: "50px",
        cssEase: "ease",
        customPaging: function (e, t) {
          return i('<button type="button" />').text(t + 1);
        },
        dots: !1,
        dotsClass: "slick-dots",
        draggable: !0,
        easing: "linear",
        edgeFriction: 0.35,
        fade: !1,
        focusOnSelect: !1,
        focusOnChange: !1,
        infinite: !0,
        initialSlide: 0,
        lazyLoad: "ondemand",
        mobileFirst: !1,
        pauseOnHover: !0,
        pauseOnFocus: !0,
        pauseOnDotsHover: !1,
        respondTo: "window",
        responsive: null,
        rows: 1,
        rtl: !1,
        slide: "",
        slidesPerRow: 1,
        slidesToShow: 1,
        slidesToScroll: 1,
        speed: 500,
        swipe: !0,
        swipeToSlide: !1,
        touchMove: !0,
        touchThreshold: 5,
        useCSS: !0,
        useTransform: !0,
        variableWidth: !1,
        vertical: !1,
        verticalSwiping: !1,
        waitForAnimate: !0,
        zIndex: 1e3,
      }),
        (n.initials = {
          animating: !1,
          dragging: !1,
          autoPlayTimer: null,
          currentDirection: 0,
          currentLeft: null,
          currentSlide: 0,
          direction: 1,
          $dots: null,
          listWidth: null,
          listHeight: null,
          loadIndex: 0,
          $nextArrow: null,
          $prevArrow: null,
          scrolling: !1,
          slideCount: null,
          slideWidth: null,
          $slideTrack: null,
          $slides: null,
          sliding: !1,
          slideOffset: 0,
          swipeLeft: null,
          swiping: !1,
          $list: null,
          touchObject: {},
          transformsEnabled: !1,
          unslicked: !1,
        }),
        i.extend(n, n.initials),
        (n.activeBreakpoint = null),
        (n.animType = null),
        (n.animProp = null),
        (n.breakpoints = []),
        (n.breakpointSettings = []),
        (n.cssTransitions = !1),
        (n.focussed = !1),
        (n.interrupted = !1),
        (n.hidden = "hidden"),
        (n.paused = !0),
        (n.positionProp = null),
        (n.respondTo = null),
        (n.rowCount = 1),
        (n.shouldClick = !0),
        (n.$slider = i(t)),
        (n.$slidesCache = null),
        (n.transformType = null),
        (n.transitionType = null),
        (n.visibilityChange = "visibilitychange"),
        (n.windowWidth = 0),
        (n.windowTimer = null),
        (s = i(t).data("slick") || {}),
        (n.options = i.extend({}, n.defaults, o, s)),
        (n.currentSlide = n.options.initialSlide),
        (n.originalSettings = n.options),
        void 0 !== document.mozHidden
          ? ((n.hidden = "mozHidden"),
            (n.visibilityChange = "mozvisibilitychange"))
          : void 0 !== document.webkitHidden &&
            ((n.hidden = "webkitHidden"),
            (n.visibilityChange = "webkitvisibilitychange")),
        (n.autoPlay = i.proxy(n.autoPlay, n)),
        (n.autoPlayClear = i.proxy(n.autoPlayClear, n)),
        (n.autoPlayIterator = i.proxy(n.autoPlayIterator, n)),
        (n.changeSlide = i.proxy(n.changeSlide, n)),
        (n.clickHandler = i.proxy(n.clickHandler, n)),
        (n.selectHandler = i.proxy(n.selectHandler, n)),
        (n.setPosition = i.proxy(n.setPosition, n)),
        (n.swipeHandler = i.proxy(n.swipeHandler, n)),
        (n.dragHandler = i.proxy(n.dragHandler, n)),
        (n.keyHandler = i.proxy(n.keyHandler, n)),
        (n.instanceUid = e++),
        (n.htmlExpr = /^(?:\s*(<[\w\W]+>)[^>]*)$/),
        n.registerBreakpoints(),
        n.init(!0);
    };
  })()).prototype.activateADA = function () {
    this.$slideTrack
      .find(".slick-active")
      .attr({ "aria-hidden": "false" })
      .find("a, input, button, select")
      .attr({ tabindex: "0" });
  }),
    (e.prototype.addSlide = e.prototype.slickAdd = function (e, t, o) {
      var s = this;
      if ("boolean" == typeof t) (o = t), (t = null);
      else if (t < 0 || t >= s.slideCount) return !1;
      s.unload(),
        "number" == typeof t
          ? 0 === t && 0 === s.$slides.length
            ? i(e).appendTo(s.$slideTrack)
            : o
            ? i(e).insertBefore(s.$slides.eq(t))
            : i(e).insertAfter(s.$slides.eq(t))
          : !0 === o
          ? i(e).prependTo(s.$slideTrack)
          : i(e).appendTo(s.$slideTrack),
        (s.$slides = s.$slideTrack.children(this.options.slide)),
        s.$slideTrack.children(this.options.slide).detach(),
        s.$slideTrack.append(s.$slides),
        s.$slides.each(function (e, t) {
          i(t).attr("data-slick-index", e);
        }),
        (s.$slidesCache = s.$slides),
        s.reinit();
    }),
    (e.prototype.animateHeight = function () {
      var i = this;
      if (
        1 === i.options.slidesToShow &&
        !0 === i.options.adaptiveHeight &&
        !1 === i.options.vertical
      ) {
        var e = i.$slides.eq(i.currentSlide).outerHeight(!0);
        i.$list.animate({ height: e }, i.options.speed);
      }
    }),
    (e.prototype.animateSlide = function (e, t) {
      var o = {},
        s = this;
      s.animateHeight(),
        !0 === s.options.rtl && !1 === s.options.vertical && (e = -e),
        !1 === s.transformsEnabled
          ? !1 === s.options.vertical
            ? s.$slideTrack.animate(
                { left: e },
                s.options.speed,
                s.options.easing,
                t
              )
            : s.$slideTrack.animate(
                { top: e },
                s.options.speed,
                s.options.easing,
                t
              )
          : !1 === s.cssTransitions
          ? (!0 === s.options.rtl && (s.currentLeft = -s.currentLeft),
            i({ animStart: s.currentLeft }).animate(
              { animStart: e },
              {
                duration: s.options.speed,
                easing: s.options.easing,
                step: function (i) {
                  (i = Math.ceil(i)),
                    !1 === s.options.vertical
                      ? ((o[s.animType] = "translate(" + i + "px, 0px)"),
                        s.$slideTrack.css(o))
                      : ((o[s.animType] = "translate(0px," + i + "px)"),
                        s.$slideTrack.css(o));
                },
                complete: function () {
                  t && t.call();
                },
              }
            ))
          : (s.applyTransition(),
            (e = Math.ceil(e)),
            !1 === s.options.vertical
              ? (o[s.animType] = "translate3d(" + e + "px, 0px, 0px)")
              : (o[s.animType] = "translate3d(0px," + e + "px, 0px)"),
            s.$slideTrack.css(o),
            t &&
              setTimeout(function () {
                s.disableTransition(), t.call();
              }, s.options.speed));
    }),
    (e.prototype.getNavTarget = function () {
      var e = this,
        t = e.options.asNavFor;
      return t && null !== t && (t = i(t).not(e.$slider)), t;
    }),
    (e.prototype.asNavFor = function (e) {
      var t = this.getNavTarget();
      null !== t &&
        "object" == typeof t &&
        t.each(function () {
          var t = i(this).slick("getSlick");
          t.unslicked || t.slideHandler(e, !0);
        });
    }),
    (e.prototype.applyTransition = function (i) {
      var e = this,
        t = {};
      !1 === e.options.fade
        ? (t[e.transitionType] =
            e.transformType + " " + e.options.speed + "ms " + e.options.cssEase)
        : (t[e.transitionType] =
            "opacity " + e.options.speed + "ms " + e.options.cssEase),
        !1 === e.options.fade ? e.$slideTrack.css(t) : e.$slides.eq(i).css(t);
    }),
    (e.prototype.autoPlay = function () {
      var i = this;
      i.autoPlayClear(),
        i.slideCount > i.options.slidesToShow &&
          (i.autoPlayTimer = setInterval(
            i.autoPlayIterator,
            i.options.autoplaySpeed
          ));
    }),
    (e.prototype.autoPlayClear = function () {
      var i = this;
      i.autoPlayTimer && clearInterval(i.autoPlayTimer);
    }),
    (e.prototype.autoPlayIterator = function () {
      var i = this,
        e = i.currentSlide + i.options.slidesToScroll;
      i.paused ||
        i.interrupted ||
        i.focussed ||
        (!1 === i.options.infinite &&
          (1 === i.direction && i.currentSlide + 1 === i.slideCount - 1
            ? (i.direction = 0)
            : 0 === i.direction &&
              ((e = i.currentSlide - i.options.slidesToScroll),
              i.currentSlide - 1 == 0 && (i.direction = 1))),
        i.slideHandler(e));
    }),
    (e.prototype.buildArrows = function () {
      var e = this;
      !0 === e.options.arrows &&
        ((e.$prevArrow = i(e.options.prevArrow).addClass("slick-arrow")),
        (e.$nextArrow = i(e.options.nextArrow).addClass("slick-arrow")),
        e.slideCount > e.options.slidesToShow
          ? (e.$prevArrow
              .removeClass("slick-hidden")
              .removeAttr("aria-hidden tabindex"),
            e.$nextArrow
              .removeClass("slick-hidden")
              .removeAttr("aria-hidden tabindex"),
            e.htmlExpr.test(e.options.prevArrow) &&
              e.$prevArrow.prependTo(e.options.appendArrows),
            e.htmlExpr.test(e.options.nextArrow) &&
              e.$nextArrow.appendTo(e.options.appendArrows),
            !0 !== e.options.infinite &&
              e.$prevArrow
                .addClass("slick-disabled")
                .attr("aria-disabled", "true"))
          : e.$prevArrow
              .add(e.$nextArrow)
              .addClass("slick-hidden")
              .attr({ "aria-disabled": "true", tabindex: "-1" }));
    }),
    (e.prototype.buildDots = function () {
      var e,
        t,
        o = this;
      if (!0 === o.options.dots) {
        for (
          o.$slider.addClass("slick-dotted"),
            t = i("<ul />").addClass(o.options.dotsClass),
            e = 0;
          e <= o.getDotCount();
          e += 1
        )
          t.append(i("<li />").append(o.options.customPaging.call(this, o, e)));
        (o.$dots = t.appendTo(o.options.appendDots)),
          o.$dots.find("li").first().addClass("slick-active");
      }
    }),
    (e.prototype.buildOut = function () {
      var e = this;
      (e.$slides = e.$slider
        .children(e.options.slide + ":not(.slick-cloned)")
        .addClass("slick-slide")),
        (e.slideCount = e.$slides.length),
        e.$slides.each(function (e, t) {
          i(t)
            .attr("data-slick-index", e)
            .data("originalStyling", i(t).attr("style") || "");
        }),
        e.$slider.addClass("slick-slider"),
        (e.$slideTrack =
          0 === e.slideCount
            ? i('<div class="slick-track"/>').appendTo(e.$slider)
            : e.$slides.wrapAll('<div class="slick-track"/>').parent()),
        (e.$list = e.$slideTrack.wrap('<div class="slick-list"/>').parent()),
        e.$slideTrack.css("opacity", 0),
        (!0 !== e.options.centerMode && !0 !== e.options.swipeToSlide) ||
          (e.options.slidesToScroll = 1),
        i("img[data-lazy]", e.$slider).not("[src]").addClass("slick-loading"),
        e.setupInfinite(),
        e.buildArrows(),
        e.buildDots(),
        e.updateDots(),
        e.setSlideClasses(
          "number" == typeof e.currentSlide ? e.currentSlide : 0
        ),
        !0 === e.options.draggable && e.$list.addClass("draggable");
    }),
    (e.prototype.buildRows = function () {
      var i,
        e,
        t,
        o,
        s,
        n,
        r,
        l = this;
      if (
        ((o = document.createDocumentFragment()),
        (n = l.$slider.children()),
        l.options.rows > 1)
      ) {
        for (
          r = l.options.slidesPerRow * l.options.rows,
            s = Math.ceil(n.length / r),
            i = 0;
          i < s;
          i++
        ) {
          var d = document.createElement("div");
          for (e = 0; e < l.options.rows; e++) {
            var a = document.createElement("div");
            for (t = 0; t < l.options.slidesPerRow; t++) {
              var c = i * r + (e * l.options.slidesPerRow + t);
              n.get(c) && a.appendChild(n.get(c));
            }
            d.appendChild(a);
          }
          o.appendChild(d);
        }
        l.$slider.empty().append(o),
          l.$slider
            .children()
            .children()
            .children()
            .css({
              width: 100 / l.options.slidesPerRow + "%",
              display: "inline-block",
            });
      }
    }),
    (e.prototype.checkResponsive = function (e, t) {
      var o,
        s,
        n,
        r = this,
        l = !1,
        d = r.$slider.width(),
        a = window.innerWidth || i(window).width();
      if (
        ("window" === r.respondTo
          ? (n = a)
          : "slider" === r.respondTo
          ? (n = d)
          : "min" === r.respondTo && (n = Math.min(a, d)),
        r.options.responsive &&
          r.options.responsive.length &&
          null !== r.options.responsive)
      ) {
        s = null;
        for (o in r.breakpoints)
          r.breakpoints.hasOwnProperty(o) &&
            (!1 === r.originalSettings.mobileFirst
              ? n < r.breakpoints[o] && (s = r.breakpoints[o])
              : n > r.breakpoints[o] && (s = r.breakpoints[o]));
        null !== s
          ? null !== r.activeBreakpoint
            ? (s !== r.activeBreakpoint || t) &&
              ((r.activeBreakpoint = s),
              "unslick" === r.breakpointSettings[s]
                ? r.unslick(s)
                : ((r.options = i.extend(
                    {},
                    r.originalSettings,
                    r.breakpointSettings[s]
                  )),
                  !0 === e && (r.currentSlide = r.options.initialSlide),
                  r.refresh(e)),
              (l = s))
            : ((r.activeBreakpoint = s),
              "unslick" === r.breakpointSettings[s]
                ? r.unslick(s)
                : ((r.options = i.extend(
                    {},
                    r.originalSettings,
                    r.breakpointSettings[s]
                  )),
                  !0 === e && (r.currentSlide = r.options.initialSlide),
                  r.refresh(e)),
              (l = s))
          : null !== r.activeBreakpoint &&
            ((r.activeBreakpoint = null),
            (r.options = r.originalSettings),
            !0 === e && (r.currentSlide = r.options.initialSlide),
            r.refresh(e),
            (l = s)),
          e || !1 === l || r.$slider.trigger("breakpoint", [r, l]);
      }
    }),
    (e.prototype.changeSlide = function (e, t) {
      var o,
        s,
        n,
        r = this,
        l = i(e.currentTarget);
      switch (
        (l.is("a") && e.preventDefault(),
        l.is("li") || (l = l.closest("li")),
        (n = r.slideCount % r.options.slidesToScroll != 0),
        (o = n
          ? 0
          : (r.slideCount - r.currentSlide) % r.options.slidesToScroll),
        e.data.message)
      ) {
        case "previous":
          (s = 0 === o ? r.options.slidesToScroll : r.options.slidesToShow - o),
            r.slideCount > r.options.slidesToShow &&
              r.slideHandler(r.currentSlide - s, !1, t);
          break;
        case "next":
          (s = 0 === o ? r.options.slidesToScroll : o),
            r.slideCount > r.options.slidesToShow &&
              r.slideHandler(r.currentSlide + s, !1, t);
          break;
        case "index":
          var d =
            0 === e.data.index
              ? 0
              : e.data.index || l.index() * r.options.slidesToScroll;
          r.slideHandler(r.checkNavigable(d), !1, t),
            l.children().trigger("focus");
          break;
        default:
          return;
      }
    }),
    (e.prototype.checkNavigable = function (i) {
      var e, t;
      if (((e = this.getNavigableIndexes()), (t = 0), i > e[e.length - 1]))
        i = e[e.length - 1];
      else
        for (var o in e) {
          if (i < e[o]) {
            i = t;
            break;
          }
          t = e[o];
        }
      return i;
    }),
    (e.prototype.cleanUpEvents = function () {
      var e = this;
      e.options.dots &&
        null !== e.$dots &&
        (i("li", e.$dots)
          .off("click.slick", e.changeSlide)
          .off("mouseenter.slick", i.proxy(e.interrupt, e, !0))
          .off("mouseleave.slick", i.proxy(e.interrupt, e, !1)),
        !0 === e.options.accessibility &&
          e.$dots.off("keydown.slick", e.keyHandler)),
        e.$slider.off("focus.slick blur.slick"),
        !0 === e.options.arrows &&
          e.slideCount > e.options.slidesToShow &&
          (e.$prevArrow && e.$prevArrow.off("click.slick", e.changeSlide),
          e.$nextArrow && e.$nextArrow.off("click.slick", e.changeSlide),
          !0 === e.options.accessibility &&
            (e.$prevArrow && e.$prevArrow.off("keydown.slick", e.keyHandler),
            e.$nextArrow && e.$nextArrow.off("keydown.slick", e.keyHandler))),
        e.$list.off("touchstart.slick mousedown.slick", e.swipeHandler),
        e.$list.off("touchmove.slick mousemove.slick", e.swipeHandler),
        e.$list.off("touchend.slick mouseup.slick", e.swipeHandler),
        e.$list.off("touchcancel.slick mouseleave.slick", e.swipeHandler),
        e.$list.off("click.slick", e.clickHandler),
        i(document).off(e.visibilityChange, e.visibility),
        e.cleanUpSlideEvents(),
        !0 === e.options.accessibility &&
          e.$list.off("keydown.slick", e.keyHandler),
        !0 === e.options.focusOnSelect &&
          i(e.$slideTrack).children().off("click.slick", e.selectHandler),
        i(window).off(
          "orientationchange.slick.slick-" + e.instanceUid,
          e.orientationChange
        ),
        i(window).off("resize.slick.slick-" + e.instanceUid, e.resize),
        i("[draggable!=true]", e.$slideTrack).off(
          "dragstart",
          e.preventDefault
        ),
        i(window).off("load.slick.slick-" + e.instanceUid, e.setPosition);
    }),
    (e.prototype.cleanUpSlideEvents = function () {
      var e = this;
      e.$list.off("mouseenter.slick", i.proxy(e.interrupt, e, !0)),
        e.$list.off("mouseleave.slick", i.proxy(e.interrupt, e, !1));
    }),
    (e.prototype.cleanUpRows = function () {
      var i,
        e = this;
      e.options.rows > 1 &&
        ((i = e.$slides.children().children()).removeAttr("style"),
        e.$slider.empty().append(i));
    }),
    (e.prototype.clickHandler = function (i) {
      !1 === this.shouldClick &&
        (i.stopImmediatePropagation(), i.stopPropagation(), i.preventDefault());
    }),
    (e.prototype.destroy = function (e) {
      var t = this;
      t.autoPlayClear(),
        (t.touchObject = {}),
        t.cleanUpEvents(),
        i(".slick-cloned", t.$slider).detach(),
        t.$dots && t.$dots.remove(),
        t.$prevArrow &&
          t.$prevArrow.length &&
          (t.$prevArrow
            .removeClass("slick-disabled slick-arrow slick-hidden")
            .removeAttr("aria-hidden aria-disabled tabindex")
            .css("display", ""),
          t.htmlExpr.test(t.options.prevArrow) && t.$prevArrow.remove()),
        t.$nextArrow &&
          t.$nextArrow.length &&
          (t.$nextArrow
            .removeClass("slick-disabled slick-arrow slick-hidden")
            .removeAttr("aria-hidden aria-disabled tabindex")
            .css("display", ""),
          t.htmlExpr.test(t.options.nextArrow) && t.$nextArrow.remove()),
        t.$slides &&
          (t.$slides
            .removeClass(
              "slick-slide slick-active slick-center slick-visible slick-current"
            )
            .removeAttr("aria-hidden")
            .removeAttr("data-slick-index")
            .each(function () {
              i(this).attr("style", i(this).data("originalStyling"));
            }),
          t.$slideTrack.children(this.options.slide).detach(),
          t.$slideTrack.detach(),
          t.$list.detach(),
          t.$slider.append(t.$slides)),
        t.cleanUpRows(),
        t.$slider.removeClass("slick-slider"),
        t.$slider.removeClass("slick-initialized"),
        t.$slider.removeClass("slick-dotted"),
        (t.unslicked = !0),
        e || t.$slider.trigger("destroy", [t]);
    }),
    (e.prototype.disableTransition = function (i) {
      var e = this,
        t = {};
      (t[e.transitionType] = ""),
        !1 === e.options.fade ? e.$slideTrack.css(t) : e.$slides.eq(i).css(t);
    }),
    (e.prototype.fadeSlide = function (i, e) {
      var t = this;
      !1 === t.cssTransitions
        ? (t.$slides.eq(i).css({ zIndex: t.options.zIndex }),
          t.$slides
            .eq(i)
            .animate({ opacity: 1 }, t.options.speed, t.options.easing, e))
        : (t.applyTransition(i),
          t.$slides.eq(i).css({ opacity: 1, zIndex: t.options.zIndex }),
          e &&
            setTimeout(function () {
              t.disableTransition(i), e.call();
            }, t.options.speed));
    }),
    (e.prototype.fadeSlideOut = function (i) {
      var e = this;
      !1 === e.cssTransitions
        ? e.$slides
            .eq(i)
            .animate(
              { opacity: 0, zIndex: e.options.zIndex - 2 },
              e.options.speed,
              e.options.easing
            )
        : (e.applyTransition(i),
          e.$slides.eq(i).css({ opacity: 0, zIndex: e.options.zIndex - 2 }));
    }),
    (e.prototype.filterSlides = e.prototype.slickFilter = function (i) {
      var e = this;
      null !== i &&
        ((e.$slidesCache = e.$slides),
        e.unload(),
        e.$slideTrack.children(this.options.slide).detach(),
        e.$slidesCache.filter(i).appendTo(e.$slideTrack),
        e.reinit());
    }),
    (e.prototype.focusHandler = function () {
      var e = this;
      e.$slider
        .off("focus.slick blur.slick")
        .on("focus.slick blur.slick", "*", function (t) {
          t.stopImmediatePropagation();
          var o = i(this);
          setTimeout(function () {
            e.options.pauseOnFocus &&
              ((e.focussed = o.is(":focus")), e.autoPlay());
          }, 0);
        });
    }),
    (e.prototype.getCurrent = e.prototype.slickCurrentSlide = function () {
      return this.currentSlide;
    }),
    (e.prototype.getDotCount = function () {
      var i = this,
        e = 0,
        t = 0,
        o = 0;
      if (!0 === i.options.infinite)
        if (i.slideCount <= i.options.slidesToShow) ++o;
        else
          for (; e < i.slideCount; )
            ++o,
              (e = t + i.options.slidesToScroll),
              (t +=
                i.options.slidesToScroll <= i.options.slidesToShow
                  ? i.options.slidesToScroll
                  : i.options.slidesToShow);
      else if (!0 === i.options.centerMode) o = i.slideCount;
      else if (i.options.asNavFor)
        for (; e < i.slideCount; )
          ++o,
            (e = t + i.options.slidesToScroll),
            (t +=
              i.options.slidesToScroll <= i.options.slidesToShow
                ? i.options.slidesToScroll
                : i.options.slidesToShow);
      else
        o =
          1 +
          Math.ceil(
            (i.slideCount - i.options.slidesToShow) / i.options.slidesToScroll
          );
      return o - 1;
    }),
    (e.prototype.getLeft = function (i) {
      var e,
        t,
        o,
        s,
        n = this,
        r = 0;
      return (
        (n.slideOffset = 0),
        (t = n.$slides.first().outerHeight(!0)),
        !0 === n.options.infinite
          ? (n.slideCount > n.options.slidesToShow &&
              ((n.slideOffset = n.slideWidth * n.options.slidesToShow * -1),
              (s = -1),
              !0 === n.options.vertical &&
                !0 === n.options.centerMode &&
                (2 === n.options.slidesToShow
                  ? (s = -1.5)
                  : 1 === n.options.slidesToShow && (s = -2)),
              (r = t * n.options.slidesToShow * s)),
            n.slideCount % n.options.slidesToScroll != 0 &&
              i + n.options.slidesToScroll > n.slideCount &&
              n.slideCount > n.options.slidesToShow &&
              (i > n.slideCount
                ? ((n.slideOffset =
                    (n.options.slidesToShow - (i - n.slideCount)) *
                    n.slideWidth *
                    -1),
                  (r = (n.options.slidesToShow - (i - n.slideCount)) * t * -1))
                : ((n.slideOffset =
                    (n.slideCount % n.options.slidesToScroll) *
                    n.slideWidth *
                    -1),
                  (r = (n.slideCount % n.options.slidesToScroll) * t * -1))))
          : i + n.options.slidesToShow > n.slideCount &&
            ((n.slideOffset =
              (i + n.options.slidesToShow - n.slideCount) * n.slideWidth),
            (r = (i + n.options.slidesToShow - n.slideCount) * t)),
        n.slideCount <= n.options.slidesToShow &&
          ((n.slideOffset = 0), (r = 0)),
        !0 === n.options.centerMode && n.slideCount <= n.options.slidesToShow
          ? (n.slideOffset =
              (n.slideWidth * Math.floor(n.options.slidesToShow)) / 2 -
              (n.slideWidth * n.slideCount) / 2)
          : !0 === n.options.centerMode && !0 === n.options.infinite
          ? (n.slideOffset +=
              n.slideWidth * Math.floor(n.options.slidesToShow / 2) -
              n.slideWidth)
          : !0 === n.options.centerMode &&
            ((n.slideOffset = 0),
            (n.slideOffset +=
              n.slideWidth * Math.floor(n.options.slidesToShow / 2))),
        (e =
          !1 === n.options.vertical
            ? i * n.slideWidth * -1 + n.slideOffset
            : i * t * -1 + r),
        !0 === n.options.variableWidth &&
          ((o =
            n.slideCount <= n.options.slidesToShow || !1 === n.options.infinite
              ? n.$slideTrack.children(".slick-slide").eq(i)
              : n.$slideTrack
                  .children(".slick-slide")
                  .eq(i + n.options.slidesToShow)),
          (e =
            !0 === n.options.rtl
              ? o[0]
                ? -1 * (n.$slideTrack.width() - o[0].offsetLeft - o.width())
                : 0
              : o[0]
              ? -1 * o[0].offsetLeft
              : 0),
          !0 === n.options.centerMode &&
            ((o =
              n.slideCount <= n.options.slidesToShow ||
              !1 === n.options.infinite
                ? n.$slideTrack.children(".slick-slide").eq(i)
                : n.$slideTrack
                    .children(".slick-slide")
                    .eq(i + n.options.slidesToShow + 1)),
            (e =
              !0 === n.options.rtl
                ? o[0]
                  ? -1 * (n.$slideTrack.width() - o[0].offsetLeft - o.width())
                  : 0
                : o[0]
                ? -1 * o[0].offsetLeft
                : 0),
            (e += (n.$list.width() - o.outerWidth()) / 2))),
        e
      );
    }),
    (e.prototype.getOption = e.prototype.slickGetOption = function (i) {
      return this.options[i];
    }),
    (e.prototype.getNavigableIndexes = function () {
      var i,
        e = this,
        t = 0,
        o = 0,
        s = [];
      for (
        !1 === e.options.infinite
          ? (i = e.slideCount)
          : ((t = -1 * e.options.slidesToScroll),
            (o = -1 * e.options.slidesToScroll),
            (i = 2 * e.slideCount));
        t < i;

      )
        s.push(t),
          (t = o + e.options.slidesToScroll),
          (o +=
            e.options.slidesToScroll <= e.options.slidesToShow
              ? e.options.slidesToScroll
              : e.options.slidesToShow);
      return s;
    }),
    (e.prototype.getSlick = function () {
      return this;
    }),
    (e.prototype.getSlideCount = function () {
      var e,
        t,
        o = this;
      return (
        (t =
          !0 === o.options.centerMode
            ? o.slideWidth * Math.floor(o.options.slidesToShow / 2)
            : 0),
        !0 === o.options.swipeToSlide
          ? (o.$slideTrack.find(".slick-slide").each(function (s, n) {
              if (n.offsetLeft - t + i(n).outerWidth() / 2 > -1 * o.swipeLeft)
                return (e = n), !1;
            }),
            Math.abs(i(e).attr("data-slick-index") - o.currentSlide) || 1)
          : o.options.slidesToScroll
      );
    }),
    (e.prototype.goTo = e.prototype.slickGoTo = function (i, e) {
      this.changeSlide({ data: { message: "index", index: parseInt(i) } }, e);
    }),
    (e.prototype.init = function (e) {
      var t = this;
      i(t.$slider).hasClass("slick-initialized") ||
        (i(t.$slider).addClass("slick-initialized"),
        t.buildRows(),
        t.buildOut(),
        t.setProps(),
        t.startLoad(),
        t.loadSlider(),
        t.initializeEvents(),
        t.updateArrows(),
        t.updateDots(),
        t.checkResponsive(!0),
        t.focusHandler()),
        e && t.$slider.trigger("init", [t]),
        !0 === t.options.accessibility && t.initADA(),
        t.options.autoplay && ((t.paused = !1), t.autoPlay());
    }),
    (e.prototype.initADA = function () {
      var e = this,
        t = Math.ceil(e.slideCount / e.options.slidesToShow),
        o = e.getNavigableIndexes().filter(function (i) {
          return i >= 0 && i < e.slideCount;
        });
      e.$slides
        .add(e.$slideTrack.find(".slick-cloned"))
        .attr({ "aria-hidden": "true", tabindex: "-1" })
        .find("a, input, button, select")
        .attr({ tabindex: "-1" }),
        null !== e.$dots &&
          (e.$slides
            .not(e.$slideTrack.find(".slick-cloned"))
            .each(function (t) {
              var s = o.indexOf(t);
              i(this).attr({
                role: "tabpanel",
                id: "slick-slide" + e.instanceUid + t,
                tabindex: -1,
              }),
                -1 !== s &&
                  i(this).attr({
                    "aria-describedby":
                      "slick-slide-control" + e.instanceUid + s,
                  });
            }),
          e.$dots
            .attr("role", "tablist")
            .find("li")
            .each(function (s) {
              var n = o[s];
              i(this).attr({ role: "presentation" }),
                i(this)
                  .find("button")
                  .first()
                  .attr({
                    role: "tab",
                    id: "slick-slide-control" + e.instanceUid + s,
                    "aria-controls": "slick-slide" + e.instanceUid + n,
                    "aria-label": s + 1 + " of " + t,
                    "aria-selected": null,
                    tabindex: "-1",
                  });
            })
            .eq(e.currentSlide)
            .find("button")
            .attr({ "aria-selected": "true", tabindex: "0" })
            .end());
      for (var s = e.currentSlide, n = s + e.options.slidesToShow; s < n; s++)
        e.$slides.eq(s).attr("tabindex", 0);
      e.activateADA();
    }),
    (e.prototype.initArrowEvents = function () {
      var i = this;
      !0 === i.options.arrows &&
        i.slideCount > i.options.slidesToShow &&
        (i.$prevArrow
          .off("click.slick")
          .on("click.slick", { message: "previous" }, i.changeSlide),
        i.$nextArrow
          .off("click.slick")
          .on("click.slick", { message: "next" }, i.changeSlide),
        !0 === i.options.accessibility &&
          (i.$prevArrow.on("keydown.slick", i.keyHandler),
          i.$nextArrow.on("keydown.slick", i.keyHandler)));
    }),
    (e.prototype.initDotEvents = function () {
      var e = this;
      !0 === e.options.dots &&
        (i("li", e.$dots).on(
          "click.slick",
          { message: "index" },
          e.changeSlide
        ),
        !0 === e.options.accessibility &&
          e.$dots.on("keydown.slick", e.keyHandler)),
        !0 === e.options.dots &&
          !0 === e.options.pauseOnDotsHover &&
          i("li", e.$dots)
            .on("mouseenter.slick", i.proxy(e.interrupt, e, !0))
            .on("mouseleave.slick", i.proxy(e.interrupt, e, !1));
    }),
    (e.prototype.initSlideEvents = function () {
      var e = this;
      e.options.pauseOnHover &&
        (e.$list.on("mouseenter.slick", i.proxy(e.interrupt, e, !0)),
        e.$list.on("mouseleave.slick", i.proxy(e.interrupt, e, !1)));
    }),
    (e.prototype.initializeEvents = function () {
      var e = this;
      e.initArrowEvents(),
        e.initDotEvents(),
        e.initSlideEvents(),
        e.$list.on(
          "touchstart.slick mousedown.slick",
          { action: "start" },
          e.swipeHandler
        ),
        e.$list.on(
          "touchmove.slick mousemove.slick",
          { action: "move" },
          e.swipeHandler
        ),
        e.$list.on(
          "touchend.slick mouseup.slick",
          { action: "end" },
          e.swipeHandler
        ),
        e.$list.on(
          "touchcancel.slick mouseleave.slick",
          { action: "end" },
          e.swipeHandler
        ),
        e.$list.on("click.slick", e.clickHandler),
        i(document).on(e.visibilityChange, i.proxy(e.visibility, e)),
        !0 === e.options.accessibility &&
          e.$list.on("keydown.slick", e.keyHandler),
        !0 === e.options.focusOnSelect &&
          i(e.$slideTrack).children().on("click.slick", e.selectHandler),
        i(window).on(
          "orientationchange.slick.slick-" + e.instanceUid,
          i.proxy(e.orientationChange, e)
        ),
        i(window).on(
          "resize.slick.slick-" + e.instanceUid,
          i.proxy(e.resize, e)
        ),
        i("[draggable!=true]", e.$slideTrack).on("dragstart", e.preventDefault),
        i(window).on("load.slick.slick-" + e.instanceUid, e.setPosition),
        i(e.setPosition);
    }),
    (e.prototype.initUI = function () {
      var i = this;
      !0 === i.options.arrows &&
        i.slideCount > i.options.slidesToShow &&
        (i.$prevArrow.show(), i.$nextArrow.show()),
        !0 === i.options.dots &&
          i.slideCount > i.options.slidesToShow &&
          i.$dots.show();
    }),
    (e.prototype.keyHandler = function (i) {
      var e = this;
      i.target.tagName.match("TEXTAREA|INPUT|SELECT") ||
        (37 === i.keyCode && !0 === e.options.accessibility
          ? e.changeSlide({
              data: { message: !0 === e.options.rtl ? "next" : "previous" },
            })
          : 39 === i.keyCode &&
            !0 === e.options.accessibility &&
            e.changeSlide({
              data: { message: !0 === e.options.rtl ? "previous" : "next" },
            }));
    }),
    (e.prototype.lazyLoad = function () {
      function e(e) {
        i("img[data-lazy]", e).each(function () {
          var e = i(this),
            t = i(this).attr("data-lazy"),
            o = i(this).attr("data-srcset"),
            s = i(this).attr("data-sizes") || n.$slider.attr("data-sizes"),
            r = document.createElement("img");
          (r.onload = function () {
            e.animate({ opacity: 0 }, 100, function () {
              o && (e.attr("srcset", o), s && e.attr("sizes", s)),
                e.attr("src", t).animate({ opacity: 1 }, 200, function () {
                  e.removeAttr("data-lazy data-srcset data-sizes").removeClass(
                    "slick-loading"
                  );
                }),
                n.$slider.trigger("lazyLoaded", [n, e, t]);
            });
          }),
            (r.onerror = function () {
              e
                .removeAttr("data-lazy")
                .removeClass("slick-loading")
                .addClass("slick-lazyload-error"),
                n.$slider.trigger("lazyLoadError", [n, e, t]);
            }),
            (r.src = t);
        });
      }
      var t,
        o,
        s,
        n = this;
      if (
        (!0 === n.options.centerMode
          ? !0 === n.options.infinite
            ? (s =
                (o = n.currentSlide + (n.options.slidesToShow / 2 + 1)) +
                n.options.slidesToShow +
                2)
            : ((o = Math.max(
                0,
                n.currentSlide - (n.options.slidesToShow / 2 + 1)
              )),
              (s = n.options.slidesToShow / 2 + 1 + 2 + n.currentSlide))
          : ((o = n.options.infinite
              ? n.options.slidesToShow + n.currentSlide
              : n.currentSlide),
            (s = Math.ceil(o + n.options.slidesToShow)),
            !0 === n.options.fade && (o > 0 && o--, s <= n.slideCount && s++)),
        (t = n.$slider.find(".slick-slide").slice(o, s)),
        "anticipated" === n.options.lazyLoad)
      )
        for (
          var r = o - 1, l = s, d = n.$slider.find(".slick-slide"), a = 0;
          a < n.options.slidesToScroll;
          a++
        )
          r < 0 && (r = n.slideCount - 1),
            (t = (t = t.add(d.eq(r))).add(d.eq(l))),
            r--,
            l++;
      e(t),
        n.slideCount <= n.options.slidesToShow
          ? e(n.$slider.find(".slick-slide"))
          : n.currentSlide >= n.slideCount - n.options.slidesToShow
          ? e(n.$slider.find(".slick-cloned").slice(0, n.options.slidesToShow))
          : 0 === n.currentSlide &&
            e(
              n.$slider.find(".slick-cloned").slice(-1 * n.options.slidesToShow)
            );
    }),
    (e.prototype.loadSlider = function () {
      var i = this;
      i.setPosition(),
        i.$slideTrack.css({ opacity: 1 }),
        i.$slider.removeClass("slick-loading"),
        i.initUI(),
        "progressive" === i.options.lazyLoad && i.progressiveLazyLoad();
    }),
    (e.prototype.next = e.prototype.slickNext = function () {
      this.changeSlide({ data: { message: "next" } });
    }),
    (e.prototype.orientationChange = function () {
      var i = this;
      i.checkResponsive(), i.setPosition();
    }),
    (e.prototype.pause = e.prototype.slickPause = function () {
      var i = this;
      i.autoPlayClear(), (i.paused = !0);
    }),
    (e.prototype.play = e.prototype.slickPlay = function () {
      var i = this;
      i.autoPlay(),
        (i.options.autoplay = !0),
        (i.paused = !1),
        (i.focussed = !1),
        (i.interrupted = !1);
    }),
    (e.prototype.postSlide = function (e) {
      var t = this;
      t.unslicked ||
        (t.$slider.trigger("afterChange", [t, e]),
        (t.animating = !1),
        t.slideCount > t.options.slidesToShow && t.setPosition(),
        (t.swipeLeft = null),
        t.options.autoplay && t.autoPlay(),
        !0 === t.options.accessibility &&
          (t.initADA(),
          t.options.focusOnChange &&
            i(t.$slides.get(t.currentSlide)).attr("tabindex", 0).focus()));
    }),
    (e.prototype.prev = e.prototype.slickPrev = function () {
      this.changeSlide({ data: { message: "previous" } });
    }),
    (e.prototype.preventDefault = function (i) {
      i.preventDefault();
    }),
    (e.prototype.progressiveLazyLoad = function (e) {
      e = e || 1;
      var t,
        o,
        s,
        n,
        r,
        l = this,
        d = i("img[data-lazy]", l.$slider);
      d.length
        ? ((t = d.first()),
          (o = t.attr("data-lazy")),
          (s = t.attr("data-srcset")),
          (n = t.attr("data-sizes") || l.$slider.attr("data-sizes")),
          ((r = document.createElement("img")).onload = function () {
            s && (t.attr("srcset", s), n && t.attr("sizes", n)),
              t
                .attr("src", o)
                .removeAttr("data-lazy data-srcset data-sizes")
                .removeClass("slick-loading"),
              !0 === l.options.adaptiveHeight && l.setPosition(),
              l.$slider.trigger("lazyLoaded", [l, t, o]),
              l.progressiveLazyLoad();
          }),
          (r.onerror = function () {
            e < 3
              ? setTimeout(function () {
                  l.progressiveLazyLoad(e + 1);
                }, 500)
              : (t
                  .removeAttr("data-lazy")
                  .removeClass("slick-loading")
                  .addClass("slick-lazyload-error"),
                l.$slider.trigger("lazyLoadError", [l, t, o]),
                l.progressiveLazyLoad());
          }),
          (r.src = o))
        : l.$slider.trigger("allImagesLoaded", [l]);
    }),
    (e.prototype.refresh = function (e) {
      var t,
        o,
        s = this;
      (o = s.slideCount - s.options.slidesToShow),
        !s.options.infinite && s.currentSlide > o && (s.currentSlide = o),
        s.slideCount <= s.options.slidesToShow && (s.currentSlide = 0),
        (t = s.currentSlide),
        s.destroy(!0),
        i.extend(s, s.initials, { currentSlide: t }),
        s.init(),
        e || s.changeSlide({ data: { message: "index", index: t } }, !1);
    }),
    (e.prototype.registerBreakpoints = function () {
      var e,
        t,
        o,
        s = this,
        n = s.options.responsive || null;
      if ("array" === i.type(n) && n.length) {
        s.respondTo = s.options.respondTo || "window";
        for (e in n)
          if (((o = s.breakpoints.length - 1), n.hasOwnProperty(e))) {
            for (t = n[e].breakpoint; o >= 0; )
              s.breakpoints[o] &&
                s.breakpoints[o] === t &&
                s.breakpoints.splice(o, 1),
                o--;
            s.breakpoints.push(t), (s.breakpointSettings[t] = n[e].settings);
          }
        s.breakpoints.sort(function (i, e) {
          return s.options.mobileFirst ? i - e : e - i;
        });
      }
    }),
    (e.prototype.reinit = function () {
      var e = this;
      (e.$slides = e.$slideTrack
        .children(e.options.slide)
        .addClass("slick-slide")),
        (e.slideCount = e.$slides.length),
        e.currentSlide >= e.slideCount &&
          0 !== e.currentSlide &&
          (e.currentSlide = e.currentSlide - e.options.slidesToScroll),
        e.slideCount <= e.options.slidesToShow && (e.currentSlide = 0),
        e.registerBreakpoints(),
        e.setProps(),
        e.setupInfinite(),
        e.buildArrows(),
        e.updateArrows(),
        e.initArrowEvents(),
        e.buildDots(),
        e.updateDots(),
        e.initDotEvents(),
        e.cleanUpSlideEvents(),
        e.initSlideEvents(),
        e.checkResponsive(!1, !0),
        !0 === e.options.focusOnSelect &&
          i(e.$slideTrack).children().on("click.slick", e.selectHandler),
        e.setSlideClasses(
          "number" == typeof e.currentSlide ? e.currentSlide : 0
        ),
        e.setPosition(),
        e.focusHandler(),
        (e.paused = !e.options.autoplay),
        e.autoPlay(),
        e.$slider.trigger("reInit", [e]);
    }),
    (e.prototype.resize = function () {
      var e = this;
      i(window).width() !== e.windowWidth &&
        (clearTimeout(e.windowDelay),
        (e.windowDelay = window.setTimeout(function () {
          (e.windowWidth = i(window).width()),
            e.checkResponsive(),
            e.unslicked || e.setPosition();
        }, 50)));
    }),
    (e.prototype.removeSlide = e.prototype.slickRemove = function (i, e, t) {
      var o = this;
      if (
        ((i =
          "boolean" == typeof i
            ? !0 === (e = i)
              ? 0
              : o.slideCount - 1
            : !0 === e
            ? --i
            : i),
        o.slideCount < 1 || i < 0 || i > o.slideCount - 1)
      )
        return !1;
      o.unload(),
        !0 === t
          ? o.$slideTrack.children().remove()
          : o.$slideTrack.children(this.options.slide).eq(i).remove(),
        (o.$slides = o.$slideTrack.children(this.options.slide)),
        o.$slideTrack.children(this.options.slide).detach(),
        o.$slideTrack.append(o.$slides),
        (o.$slidesCache = o.$slides),
        o.reinit();
    }),
    (e.prototype.setCSS = function (i) {
      var e,
        t,
        o = this,
        s = {};
      !0 === o.options.rtl && (i = -i),
        (e = "left" == o.positionProp ? Math.ceil(i) + "px" : "0px"),
        (t = "top" == o.positionProp ? Math.ceil(i) + "px" : "0px"),
        (s[o.positionProp] = i),
        !1 === o.transformsEnabled
          ? o.$slideTrack.css(s)
          : ((s = {}),
            !1 === o.cssTransitions
              ? ((s[o.animType] = "translate(" + e + ", " + t + ")"),
                o.$slideTrack.css(s))
              : ((s[o.animType] = "translate3d(" + e + ", " + t + ", 0px)"),
                o.$slideTrack.css(s)));
    }),
    (e.prototype.setDimensions = function () {
      var i = this;
      !1 === i.options.vertical
        ? !0 === i.options.centerMode &&
          i.$list.css({ padding: "0px " + i.options.centerPadding })
        : (i.$list.height(
            i.$slides.first().outerHeight(!0) * i.options.slidesToShow
          ),
          !0 === i.options.centerMode &&
            i.$list.css({ padding: i.options.centerPadding + " 0px" })),
        (i.listWidth = i.$list.width()),
        (i.listHeight = i.$list.height()),
        !1 === i.options.vertical && !1 === i.options.variableWidth
          ? ((i.slideWidth = Math.ceil(i.listWidth / i.options.slidesToShow)),
            i.$slideTrack.width(
              Math.ceil(
                i.slideWidth * i.$slideTrack.children(".slick-slide").length
              )
            ))
          : !0 === i.options.variableWidth
          ? i.$slideTrack.width(5e3 * i.slideCount)
          : ((i.slideWidth = Math.ceil(i.listWidth)),
            i.$slideTrack.height(
              Math.ceil(
                i.$slides.first().outerHeight(!0) *
                  i.$slideTrack.children(".slick-slide").length
              )
            ));
      var e = i.$slides.first().outerWidth(!0) - i.$slides.first().width();
      !1 === i.options.variableWidth &&
        i.$slideTrack.children(".slick-slide").width(i.slideWidth - e);
    }),
    (e.prototype.setFade = function () {
      var e,
        t = this;
      t.$slides.each(function (o, s) {
        (e = t.slideWidth * o * -1),
          !0 === t.options.rtl
            ? i(s).css({
                position: "relative",
                right: e,
                top: 0,
                zIndex: t.options.zIndex - 2,
                opacity: 0,
              })
            : i(s).css({
                position: "relative",
                left: e,
                top: 0,
                zIndex: t.options.zIndex - 2,
                opacity: 0,
              });
      }),
        t.$slides
          .eq(t.currentSlide)
          .css({ zIndex: t.options.zIndex - 1, opacity: 1 });
    }),
    (e.prototype.setHeight = function () {
      var i = this;
      if (
        1 === i.options.slidesToShow &&
        !0 === i.options.adaptiveHeight &&
        !1 === i.options.vertical
      ) {
        var e = i.$slides.eq(i.currentSlide).outerHeight(!0);
        i.$list.css("height", e);
      }
    }),
    (e.prototype.setOption = e.prototype.slickSetOption = function () {
      var e,
        t,
        o,
        s,
        n,
        r = this,
        l = !1;
      if (
        ("object" === i.type(arguments[0])
          ? ((o = arguments[0]), (l = arguments[1]), (n = "multiple"))
          : "string" === i.type(arguments[0]) &&
            ((o = arguments[0]),
            (s = arguments[1]),
            (l = arguments[2]),
            "responsive" === arguments[0] && "array" === i.type(arguments[1])
              ? (n = "responsive")
              : void 0 !== arguments[1] && (n = "single")),
        "single" === n)
      )
        r.options[o] = s;
      else if ("multiple" === n)
        i.each(o, function (i, e) {
          r.options[i] = e;
        });
      else if ("responsive" === n)
        for (t in s)
          if ("array" !== i.type(r.options.responsive))
            r.options.responsive = [s[t]];
          else {
            for (e = r.options.responsive.length - 1; e >= 0; )
              r.options.responsive[e].breakpoint === s[t].breakpoint &&
                r.options.responsive.splice(e, 1),
                e--;
            r.options.responsive.push(s[t]);
          }
      l && (r.unload(), r.reinit());
    }),
    (e.prototype.setPosition = function () {
      var i = this;
      i.setDimensions(),
        i.setHeight(),
        !1 === i.options.fade
          ? i.setCSS(i.getLeft(i.currentSlide))
          : i.setFade(),
        i.$slider.trigger("setPosition", [i]);
    }),
    (e.prototype.setProps = function () {
      var i = this,
        e = document.body.style;
      (i.positionProp = !0 === i.options.vertical ? "top" : "left"),
        "top" === i.positionProp
          ? i.$slider.addClass("slick-vertical")
          : i.$slider.removeClass("slick-vertical"),
        (void 0 === e.WebkitTransition &&
          void 0 === e.MozTransition &&
          void 0 === e.msTransition) ||
          (!0 === i.options.useCSS && (i.cssTransitions = !0)),
        i.options.fade &&
          ("number" == typeof i.options.zIndex
            ? i.options.zIndex < 3 && (i.options.zIndex = 3)
            : (i.options.zIndex = i.defaults.zIndex)),
        void 0 !== e.OTransform &&
          ((i.animType = "OTransform"),
          (i.transformType = "-o-transform"),
          (i.transitionType = "OTransition"),
          void 0 === e.perspectiveProperty &&
            void 0 === e.webkitPerspective &&
            (i.animType = !1)),
        void 0 !== e.MozTransform &&
          ((i.animType = "MozTransform"),
          (i.transformType = "-moz-transform"),
          (i.transitionType = "MozTransition"),
          void 0 === e.perspectiveProperty &&
            void 0 === e.MozPerspective &&
            (i.animType = !1)),
        void 0 !== e.webkitTransform &&
          ((i.animType = "webkitTransform"),
          (i.transformType = "-webkit-transform"),
          (i.transitionType = "webkitTransition"),
          void 0 === e.perspectiveProperty &&
            void 0 === e.webkitPerspective &&
            (i.animType = !1)),
        void 0 !== e.msTransform &&
          ((i.animType = "msTransform"),
          (i.transformType = "-ms-transform"),
          (i.transitionType = "msTransition"),
          void 0 === e.msTransform && (i.animType = !1)),
        void 0 !== e.transform &&
          !1 !== i.animType &&
          ((i.animType = "transform"),
          (i.transformType = "transform"),
          (i.transitionType = "transition")),
        (i.transformsEnabled =
          i.options.useTransform && null !== i.animType && !1 !== i.animType);
    }),
    (e.prototype.setSlideClasses = function (i) {
      var e,
        t,
        o,
        s,
        n = this;
      if (
        ((t = n.$slider
          .find(".slick-slide")
          .removeClass("slick-active slick-center slick-current")
          .attr("aria-hidden", "true")),
        n.$slides.eq(i).addClass("slick-current"),
        !0 === n.options.centerMode)
      ) {
        var r = n.options.slidesToShow % 2 == 0 ? 1 : 0;
        (e = Math.floor(n.options.slidesToShow / 2)),
          !0 === n.options.infinite &&
            (i >= e && i <= n.slideCount - 1 - e
              ? n.$slides
                  .slice(i - e + r, i + e + 1)
                  .addClass("slick-active")
                  .attr("aria-hidden", "false")
              : ((o = n.options.slidesToShow + i),
                t
                  .slice(o - e + 1 + r, o + e + 2)
                  .addClass("slick-active")
                  .attr("aria-hidden", "false")),
            0 === i
              ? t
                  .eq(t.length - 1 - n.options.slidesToShow)
                  .addClass("slick-center")
              : i === n.slideCount - 1 &&
                t.eq(n.options.slidesToShow).addClass("slick-center")),
          n.$slides.eq(i).addClass("slick-center");
      } else
        i >= 0 && i <= n.slideCount - n.options.slidesToShow
          ? n.$slides
              .slice(i, i + n.options.slidesToShow)
              .addClass("slick-active")
              .attr("aria-hidden", "false")
          : t.length <= n.options.slidesToShow
          ? t.addClass("slick-active").attr("aria-hidden", "false")
          : ((s = n.slideCount % n.options.slidesToShow),
            (o = !0 === n.options.infinite ? n.options.slidesToShow + i : i),
            n.options.slidesToShow == n.options.slidesToScroll &&
            n.slideCount - i < n.options.slidesToShow
              ? t
                  .slice(o - (n.options.slidesToShow - s), o + s)
                  .addClass("slick-active")
                  .attr("aria-hidden", "false")
              : t
                  .slice(o, o + n.options.slidesToShow)
                  .addClass("slick-active")
                  .attr("aria-hidden", "false"));
      ("ondemand" !== n.options.lazyLoad &&
        "anticipated" !== n.options.lazyLoad) ||
        n.lazyLoad();
    }),
    (e.prototype.setupInfinite = function () {
      var e,
        t,
        o,
        s = this;
      if (
        (!0 === s.options.fade && (s.options.centerMode = !1),
        !0 === s.options.infinite &&
          !1 === s.options.fade &&
          ((t = null), s.slideCount > s.options.slidesToShow))
      ) {
        for (
          o =
            !0 === s.options.centerMode
              ? s.options.slidesToShow + 1
              : s.options.slidesToShow,
            e = s.slideCount;
          e > s.slideCount - o;
          e -= 1
        )
          (t = e - 1),
            i(s.$slides[t])
              .clone(!0)
              .attr("id", "")
              .attr("data-slick-index", t - s.slideCount)
              .prependTo(s.$slideTrack)
              .addClass("slick-cloned");
        for (e = 0; e < o + s.slideCount; e += 1)
          (t = e),
            i(s.$slides[t])
              .clone(!0)
              .attr("id", "")
              .attr("data-slick-index", t + s.slideCount)
              .appendTo(s.$slideTrack)
              .addClass("slick-cloned");
        s.$slideTrack
          .find(".slick-cloned")
          .find("[id]")
          .each(function () {
            i(this).attr("id", "");
          });
      }
    }),
    (e.prototype.interrupt = function (i) {
      var e = this;
      i || e.autoPlay(), (e.interrupted = i);
    }),
    (e.prototype.selectHandler = function (e) {
      var t = this,
        o = i(e.target).is(".slick-slide")
          ? i(e.target)
          : i(e.target).parents(".slick-slide"),
        s = parseInt(o.attr("data-slick-index"));
      s || (s = 0),
        t.slideCount <= t.options.slidesToShow
          ? t.slideHandler(s, !1, !0)
          : t.slideHandler(s);
    }),
    (e.prototype.slideHandler = function (i, e, t) {
      var o,
        s,
        n,
        r,
        l,
        d = null,
        a = this;
      if (
        ((e = e || !1),
        !(
          (!0 === a.animating && !0 === a.options.waitForAnimate) ||
          (!0 === a.options.fade && a.currentSlide === i)
        ))
      )
        if (
          (!1 === e && a.asNavFor(i),
          (o = i),
          (d = a.getLeft(o)),
          (r = a.getLeft(a.currentSlide)),
          (a.currentLeft = null === a.swipeLeft ? r : a.swipeLeft),
          !1 === a.options.infinite &&
            !1 === a.options.centerMode &&
            (i < 0 || i > a.getDotCount() * a.options.slidesToScroll))
        )
          !1 === a.options.fade &&
            ((o = a.currentSlide),
            !0 !== t
              ? a.animateSlide(r, function () {
                  a.postSlide(o);
                })
              : a.postSlide(o));
        else if (
          !1 === a.options.infinite &&
          !0 === a.options.centerMode &&
          (i < 0 || i > a.slideCount - a.options.slidesToScroll)
        )
          !1 === a.options.fade &&
            ((o = a.currentSlide),
            !0 !== t
              ? a.animateSlide(r, function () {
                  a.postSlide(o);
                })
              : a.postSlide(o));
        else {
          if (
            (a.options.autoplay && clearInterval(a.autoPlayTimer),
            (s =
              o < 0
                ? a.slideCount % a.options.slidesToScroll != 0
                  ? a.slideCount - (a.slideCount % a.options.slidesToScroll)
                  : a.slideCount + o
                : o >= a.slideCount
                ? a.slideCount % a.options.slidesToScroll != 0
                  ? 0
                  : o - a.slideCount
                : o),
            (a.animating = !0),
            a.$slider.trigger("beforeChange", [a, a.currentSlide, s]),
            (n = a.currentSlide),
            (a.currentSlide = s),
            a.setSlideClasses(a.currentSlide),
            a.options.asNavFor &&
              (l = (l = a.getNavTarget()).slick("getSlick")).slideCount <=
                l.options.slidesToShow &&
              l.setSlideClasses(a.currentSlide),
            a.updateDots(),
            a.updateArrows(),
            !0 === a.options.fade)
          )
            return (
              !0 !== t
                ? (a.fadeSlideOut(n),
                  a.fadeSlide(s, function () {
                    a.postSlide(s);
                  }))
                : a.postSlide(s),
              void a.animateHeight()
            );
          !0 !== t
            ? a.animateSlide(d, function () {
                a.postSlide(s);
              })
            : a.postSlide(s);
        }
    }),
    (e.prototype.startLoad = function () {
      var i = this;
      !0 === i.options.arrows &&
        i.slideCount > i.options.slidesToShow &&
        (i.$prevArrow.hide(), i.$nextArrow.hide()),
        !0 === i.options.dots &&
          i.slideCount > i.options.slidesToShow &&
          i.$dots.hide(),
        i.$slider.addClass("slick-loading");
    }),
    (e.prototype.swipeDirection = function () {
      var i,
        e,
        t,
        o,
        s = this;
      return (
        (i = s.touchObject.startX - s.touchObject.curX),
        (e = s.touchObject.startY - s.touchObject.curY),
        (t = Math.atan2(e, i)),
        (o = Math.round((180 * t) / Math.PI)) < 0 && (o = 360 - Math.abs(o)),
        o <= 45 && o >= 0
          ? !1 === s.options.rtl
            ? "left"
            : "right"
          : o <= 360 && o >= 315
          ? !1 === s.options.rtl
            ? "left"
            : "right"
          : o >= 135 && o <= 225
          ? !1 === s.options.rtl
            ? "right"
            : "left"
          : !0 === s.options.verticalSwiping
          ? o >= 35 && o <= 135
            ? "down"
            : "up"
          : "vertical"
      );
    }),
    (e.prototype.swipeEnd = function (i) {
      var e,
        t,
        o = this;
      if (((o.dragging = !1), (o.swiping = !1), o.scrolling))
        return (o.scrolling = !1), !1;
      if (
        ((o.interrupted = !1),
        (o.shouldClick = !(o.touchObject.swipeLength > 10)),
        void 0 === o.touchObject.curX)
      )
        return !1;
      if (
        (!0 === o.touchObject.edgeHit &&
          o.$slider.trigger("edge", [o, o.swipeDirection()]),
        o.touchObject.swipeLength >= o.touchObject.minSwipe)
      ) {
        switch ((t = o.swipeDirection())) {
          case "left":
          case "down":
            (e = o.options.swipeToSlide
              ? o.checkNavigable(o.currentSlide + o.getSlideCount())
              : o.currentSlide + o.getSlideCount()),
              (o.currentDirection = 0);
            break;
          case "right":
          case "up":
            (e = o.options.swipeToSlide
              ? o.checkNavigable(o.currentSlide - o.getSlideCount())
              : o.currentSlide - o.getSlideCount()),
              (o.currentDirection = 1);
        }
        "vertical" != t &&
          (o.slideHandler(e),
          (o.touchObject = {}),
          o.$slider.trigger("swipe", [o, t]));
      } else
        o.touchObject.startX !== o.touchObject.curX &&
          (o.slideHandler(o.currentSlide), (o.touchObject = {}));
    }),
    (e.prototype.swipeHandler = function (i) {
      var e = this;
      if (
        !(
          !1 === e.options.swipe ||
          ("ontouchend" in document && !1 === e.options.swipe) ||
          (!1 === e.options.draggable && -1 !== i.type.indexOf("mouse"))
        )
      )
        switch (
          ((e.touchObject.fingerCount =
            i.originalEvent && void 0 !== i.originalEvent.touches
              ? i.originalEvent.touches.length
              : 1),
          (e.touchObject.minSwipe = e.listWidth / e.options.touchThreshold),
          !0 === e.options.verticalSwiping &&
            (e.touchObject.minSwipe = e.listHeight / e.options.touchThreshold),
          i.data.action)
        ) {
          case "start":
            e.swipeStart(i);
            break;
          case "move":
            e.swipeMove(i);
            break;
          case "end":
            e.swipeEnd(i);
        }
    }),
    (e.prototype.swipeMove = function (i) {
      var e,
        t,
        o,
        s,
        n,
        r,
        l = this;
      return (
        (n = void 0 !== i.originalEvent ? i.originalEvent.touches : null),
        !(!l.dragging || l.scrolling || (n && 1 !== n.length)) &&
          ((e = l.getLeft(l.currentSlide)),
          (l.touchObject.curX = void 0 !== n ? n[0].pageX : i.clientX),
          (l.touchObject.curY = void 0 !== n ? n[0].pageY : i.clientY),
          (l.touchObject.swipeLength = Math.round(
            Math.sqrt(Math.pow(l.touchObject.curX - l.touchObject.startX, 2))
          )),
          (r = Math.round(
            Math.sqrt(Math.pow(l.touchObject.curY - l.touchObject.startY, 2))
          )),
          !l.options.verticalSwiping && !l.swiping && r > 4
            ? ((l.scrolling = !0), !1)
            : (!0 === l.options.verticalSwiping &&
                (l.touchObject.swipeLength = r),
              (t = l.swipeDirection()),
              void 0 !== i.originalEvent &&
                l.touchObject.swipeLength > 4 &&
                ((l.swiping = !0), i.preventDefault()),
              (s =
                (!1 === l.options.rtl ? 1 : -1) *
                (l.touchObject.curX > l.touchObject.startX ? 1 : -1)),
              !0 === l.options.verticalSwiping &&
                (s = l.touchObject.curY > l.touchObject.startY ? 1 : -1),
              (o = l.touchObject.swipeLength),
              (l.touchObject.edgeHit = !1),
              !1 === l.options.infinite &&
                ((0 === l.currentSlide && "right" === t) ||
                  (l.currentSlide >= l.getDotCount() && "left" === t)) &&
                ((o = l.touchObject.swipeLength * l.options.edgeFriction),
                (l.touchObject.edgeHit = !0)),
              !1 === l.options.vertical
                ? (l.swipeLeft = e + o * s)
                : (l.swipeLeft = e + o * (l.$list.height() / l.listWidth) * s),
              !0 === l.options.verticalSwiping && (l.swipeLeft = e + o * s),
              !0 !== l.options.fade &&
                !1 !== l.options.touchMove &&
                (!0 === l.animating
                  ? ((l.swipeLeft = null), !1)
                  : void l.setCSS(l.swipeLeft))))
      );
    }),
    (e.prototype.swipeStart = function (i) {
      var e,
        t = this;
      if (
        ((t.interrupted = !0),
        1 !== t.touchObject.fingerCount ||
          t.slideCount <= t.options.slidesToShow)
      )
        return (t.touchObject = {}), !1;
      void 0 !== i.originalEvent &&
        void 0 !== i.originalEvent.touches &&
        (e = i.originalEvent.touches[0]),
        (t.touchObject.startX = t.touchObject.curX =
          void 0 !== e ? e.pageX : i.clientX),
        (t.touchObject.startY = t.touchObject.curY =
          void 0 !== e ? e.pageY : i.clientY),
        (t.dragging = !0);
    }),
    (e.prototype.unfilterSlides = e.prototype.slickUnfilter = function () {
      var i = this;
      null !== i.$slidesCache &&
        (i.unload(),
        i.$slideTrack.children(this.options.slide).detach(),
        i.$slidesCache.appendTo(i.$slideTrack),
        i.reinit());
    }),
    (e.prototype.unload = function () {
      var e = this;
      i(".slick-cloned", e.$slider).remove(),
        e.$dots && e.$dots.remove(),
        e.$prevArrow &&
          e.htmlExpr.test(e.options.prevArrow) &&
          e.$prevArrow.remove(),
        e.$nextArrow &&
          e.htmlExpr.test(e.options.nextArrow) &&
          e.$nextArrow.remove(),
        e.$slides
          .removeClass("slick-slide slick-active slick-visible slick-current")
          .attr("aria-hidden", "true")
          .css("width", "");
    }),
    (e.prototype.unslick = function (i) {
      var e = this;
      e.$slider.trigger("unslick", [e, i]), e.destroy();
    }),
    (e.prototype.updateArrows = function () {
      var i = this;
      Math.floor(i.options.slidesToShow / 2),
        !0 === i.options.arrows &&
          i.slideCount > i.options.slidesToShow &&
          !i.options.infinite &&
          (i.$prevArrow
            .removeClass("slick-disabled")
            .attr("aria-disabled", "false"),
          i.$nextArrow
            .removeClass("slick-disabled")
            .attr("aria-disabled", "false"),
          0 === i.currentSlide
            ? (i.$prevArrow
                .addClass("slick-disabled")
                .attr("aria-disabled", "true"),
              i.$nextArrow
                .removeClass("slick-disabled")
                .attr("aria-disabled", "false"))
            : i.currentSlide >= i.slideCount - i.options.slidesToShow &&
              !1 === i.options.centerMode
            ? (i.$nextArrow
                .addClass("slick-disabled")
                .attr("aria-disabled", "true"),
              i.$prevArrow
                .removeClass("slick-disabled")
                .attr("aria-disabled", "false"))
            : i.currentSlide >= i.slideCount - 1 &&
              !0 === i.options.centerMode &&
              (i.$nextArrow
                .addClass("slick-disabled")
                .attr("aria-disabled", "true"),
              i.$prevArrow
                .removeClass("slick-disabled")
                .attr("aria-disabled", "false")));
    }),
    (e.prototype.updateDots = function () {
      var i = this;
      null !== i.$dots &&
        (i.$dots.find("li").removeClass("slick-active").end(),
        i.$dots
          .find("li")
          .eq(Math.floor(i.currentSlide / i.options.slidesToScroll))
          .addClass("slick-active"));
    }),
    (e.prototype.visibility = function () {
      var i = this;
      i.options.autoplay &&
        (document[i.hidden] ? (i.interrupted = !0) : (i.interrupted = !1));
    }),
    (i.fn.slick = function () {
      var i,
        t,
        o = this,
        s = arguments[0],
        n = Array.prototype.slice.call(arguments, 1),
        r = o.length;
      for (i = 0; i < r; i++)
        if (
          ("object" == typeof s || void 0 === s
            ? (o[i].slick = new e(o[i], s))
            : (t = o[i].slick[s].apply(o[i].slick, n)),
          void 0 !== t)
        )
          return t;
      return o;
    });
});
(function (a, b) {
  function d(b) {
    return !a(b)
      .parents()
      .andSelf()
      .filter(function () {
        return (
          a.curCSS(this, "visibility") === "hidden" ||
          a.expr.filters.hidden(this)
        );
      }).length;
  }
  function c(b, c) {
    var e = b.nodeName.toLowerCase();
    if ("area" === e) {
      var f = b.parentNode,
        g = f.name,
        h;
      if (!b.href || !g || f.nodeName.toLowerCase() !== "map") return !1;
      h = a("img[usemap=#" + g + "]")[0];
      return !!h && d(h);
    }
    return (
      (/input|select|textarea|button|object/.test(e)
        ? !b.disabled
        : "a" == e
        ? b.href || c
        : c) && d(b)
    );
  }
  a.ui = a.ui || {};
  a.ui.version ||
    (a.extend(a.ui, {
      version: "1.8.18",
      keyCode: {
        ALT: 18,
        BACKSPACE: 8,
        CAPS_LOCK: 20,
        COMMA: 188,
        COMMAND: 91,
        COMMAND_LEFT: 91,
        COMMAND_RIGHT: 93,
        CONTROL: 17,
        DELETE: 46,
        DOWN: 40,
        END: 35,
        ENTER: 13,
        ESCAPE: 27,
        HOME: 36,
        INSERT: 45,
        LEFT: 37,
        MENU: 93,
        NUMPAD_ADD: 107,
        NUMPAD_DECIMAL: 110,
        NUMPAD_DIVIDE: 111,
        NUMPAD_ENTER: 108,
        NUMPAD_MULTIPLY: 106,
        NUMPAD_SUBTRACT: 109,
        PAGE_DOWN: 34,
        PAGE_UP: 33,
        PERIOD: 190,
        RIGHT: 39,
        SHIFT: 16,
        SPACE: 32,
        TAB: 9,
        UP: 38,
        WINDOWS: 91,
      },
    }),
    a.fn.extend({
      propAttr: a.fn.prop || a.fn.attr,
      _focus: a.fn.focus,
      focus: function (b, c) {
        return typeof b == "number"
          ? this.each(function () {
              var d = this;
              setTimeout(function () {
                a(d).focus(), c && c.call(d);
              }, b);
            })
          : this._focus.apply(this, arguments);
      },
      scrollParent: function () {
        var b;
        (a.browser.msie && /(static|relative)/.test(this.css("position"))) ||
        /absolute/.test(this.css("position"))
          ? (b = this.parents()
              .filter(function () {
                return (
                  /(relative|absolute|fixed)/.test(
                    a.curCSS(this, "position", 1)
                  ) &&
                  /(auto|scroll)/.test(
                    a.curCSS(this, "overflow", 1) +
                      a.curCSS(this, "overflow-y", 1) +
                      a.curCSS(this, "overflow-x", 1)
                  )
                );
              })
              .eq(0))
          : (b = this.parents()
              .filter(function () {
                return /(auto|scroll)/.test(
                  a.curCSS(this, "overflow", 1) +
                    a.curCSS(this, "overflow-y", 1) +
                    a.curCSS(this, "overflow-x", 1)
                );
              })
              .eq(0));
        return /fixed/.test(this.css("position")) || !b.length
          ? a(document)
          : b;
      },
      zIndex: function (c) {
        if (c !== b) return this.css("zIndex", c);
        if (this.length) {
          var d = a(this[0]),
            e,
            f;
          while (d.length && d[0] !== document) {
            e = d.css("position");
            if (e === "absolute" || e === "relative" || e === "fixed") {
              f = parseInt(d.css("zIndex"), 10);
              if (!isNaN(f) && f !== 0) return f;
            }
            d = d.parent();
          }
        }
        return 0;
      },
      disableSelection: function () {
        return this.bind(
          (a.support.selectstart ? "selectstart" : "mousedown") +
            ".ui-disableSelection",
          function (a) {
            a.preventDefault();
          }
        );
      },
      enableSelection: function () {
        return this.unbind(".ui-disableSelection");
      },
    }),
    a.each(["Width", "Height"], function (c, d) {
      function h(b, c, d, f) {
        a.each(e, function () {
          (c -= parseFloat(a.curCSS(b, "padding" + this, !0)) || 0),
            d &&
              (c -=
                parseFloat(a.curCSS(b, "border" + this + "Width", !0)) || 0),
            f && (c -= parseFloat(a.curCSS(b, "margin" + this, !0)) || 0);
        });
        return c;
      }
      var e = d === "Width" ? ["Left", "Right"] : ["Top", "Bottom"],
        f = d.toLowerCase(),
        g = {
          innerWidth: a.fn.innerWidth,
          innerHeight: a.fn.innerHeight,
          outerWidth: a.fn.outerWidth,
          outerHeight: a.fn.outerHeight,
        };
      (a.fn["inner" + d] = function (c) {
        if (c === b) return g["inner" + d].call(this);
        return this.each(function () {
          a(this).css(f, h(this, c) + "px");
        });
      }),
        (a.fn["outer" + d] = function (b, c) {
          if (typeof b != "number") return g["outer" + d].call(this, b);
          return this.each(function () {
            a(this).css(f, h(this, b, !0, c) + "px");
          });
        });
    }),
    a.extend(a.expr[":"], {
      data: function (b, c, d) {
        return !!a.data(b, d[3]);
      },
      focusable: function (b) {
        return c(b, !isNaN(a.attr(b, "tabindex")));
      },
      tabbable: function (b) {
        var d = a.attr(b, "tabindex"),
          e = isNaN(d);
        return (e || d >= 0) && c(b, !e);
      },
    }),
    a(function () {
      var b = document.body,
        c = b.appendChild((c = document.createElement("div")));
      c.offsetHeight,
        a.extend(c.style, {
          minHeight: "100px",
          height: "auto",
          padding: 0,
          borderWidth: 0,
        }),
        (a.support.minHeight = c.offsetHeight === 100),
        (a.support.selectstart = "onselectstart" in c),
        (b.removeChild(c).style.display = "none");
    }),
    a.extend(a.ui, {
      plugin: {
        add: function (b, c, d) {
          var e = a.ui[b].prototype;
          for (var f in d)
            (e.plugins[f] = e.plugins[f] || []), e.plugins[f].push([c, d[f]]);
        },
        call: function (a, b, c) {
          var d = a.plugins[b];
          if (!!d && !!a.element[0].parentNode)
            for (var e = 0; e < d.length; e++)
              a.options[d[e][0]] && d[e][1].apply(a.element, c);
        },
      },
      contains: function (a, b) {
        return document.compareDocumentPosition
          ? a.compareDocumentPosition(b) & 16
          : a !== b && a.contains(b);
      },
      hasScroll: function (b, c) {
        if (a(b).css("overflow") === "hidden") return !1;
        var d = c && c === "left" ? "scrollLeft" : "scrollTop",
          e = !1;
        if (b[d] > 0) return !0;
        (b[d] = 1), (e = b[d] > 0), (b[d] = 0);
        return e;
      },
      isOverAxis: function (a, b, c) {
        return a > b && a < b + c;
      },
      isOver: function (b, c, d, e, f, g) {
        return a.ui.isOverAxis(b, d, f) && a.ui.isOverAxis(c, e, g);
      },
    }));
})(jQuery);
(function (a, b) {
  if (a.cleanData) {
    var c = a.cleanData;
    a.cleanData = function (b) {
      for (var d = 0, e; (e = b[d]) != null; d++)
        try {
          a(e).triggerHandler("remove");
        } catch (f) {}
      c(b);
    };
  } else {
    var d = a.fn.remove;
    a.fn.remove = function (b, c) {
      return this.each(function () {
        c ||
          ((!b || a.filter(b, [this]).length) &&
            a("*", this)
              .add([this])
              .each(function () {
                try {
                  a(this).triggerHandler("remove");
                } catch (b) {}
              }));
        return d.call(a(this), b, c);
      });
    };
  }
  (a.widget = function (b, c, d) {
    var e = b.split(".")[0],
      f;
    (b = b.split(".")[1]),
      (f = e + "-" + b),
      d || ((d = c), (c = a.Widget)),
      (a.expr[":"][f] = function (c) {
        return !!a.data(c, b);
      }),
      (a[e] = a[e] || {}),
      (a[e][b] = function (a, b) {
        arguments.length && this._createWidget(a, b);
      });
    var g = new c();
    (g.options = a.extend(!0, {}, g.options)),
      (a[e][b].prototype = a.extend(
        !0,
        g,
        {
          namespace: e,
          widgetName: b,
          widgetEventPrefix: a[e][b].prototype.widgetEventPrefix || b,
          widgetBaseClass: f,
        },
        d
      )),
      a.widget.bridge(b, a[e][b]);
  }),
    (a.widget.bridge = function (c, d) {
      a.fn[c] = function (e) {
        var f = typeof e == "string",
          g = Array.prototype.slice.call(arguments, 1),
          h = this;
        e = !f && g.length ? a.extend.apply(null, [!0, e].concat(g)) : e;
        if (f && e.charAt(0) === "_") return h;
        f
          ? this.each(function () {
              var d = a.data(this, c),
                f = d && a.isFunction(d[e]) ? d[e].apply(d, g) : d;
              if (f !== d && f !== b) {
                h = f;
                return !1;
              }
            })
          : this.each(function () {
              var b = a.data(this, c);
              b ? b.option(e || {})._init() : a.data(this, c, new d(e, this));
            });
        return h;
      };
    }),
    (a.Widget = function (a, b) {
      arguments.length && this._createWidget(a, b);
    }),
    (a.Widget.prototype = {
      widgetName: "widget",
      widgetEventPrefix: "",
      options: { disabled: !1 },
      _createWidget: function (b, c) {
        a.data(c, this.widgetName, this),
          (this.element = a(c)),
          (this.options = a.extend(
            !0,
            {},
            this.options,
            this._getCreateOptions(),
            b
          ));
        var d = this;
        this.element.bind("remove." + this.widgetName, function () {
          d.destroy();
        }),
          this._create(),
          this._trigger("create"),
          this._init();
      },
      _getCreateOptions: function () {
        return a.metadata && a.metadata.get(this.element[0])[this.widgetName];
      },
      _create: function () {},
      _init: function () {},
      destroy: function () {
        this.element.unbind("." + this.widgetName).removeData(this.widgetName),
          this.widget()
            .unbind("." + this.widgetName)
            .removeAttr("aria-disabled")
            .removeClass(
              this.widgetBaseClass + "-disabled " + "ui-state-disabled"
            );
      },
      widget: function () {
        return this.element;
      },
      option: function (c, d) {
        var e = c;
        if (arguments.length === 0) return a.extend({}, this.options);
        if (typeof c == "string") {
          if (d === b) return this.options[c];
          (e = {}), (e[c] = d);
        }
        this._setOptions(e);
        return this;
      },
      _setOptions: function (b) {
        var c = this;
        a.each(b, function (a, b) {
          c._setOption(a, b);
        });
        return this;
      },
      _setOption: function (a, b) {
        (this.options[a] = b),
          a === "disabled" &&
            this.widget()
              [b ? "addClass" : "removeClass"](
                this.widgetBaseClass + "-disabled" + " " + "ui-state-disabled"
              )
              .attr("aria-disabled", b);
        return this;
      },
      enable: function () {
        return this._setOption("disabled", !1);
      },
      disable: function () {
        return this._setOption("disabled", !0);
      },
      _trigger: function (b, c, d) {
        var e,
          f,
          g = this.options[b];
        (d = d || {}),
          (c = a.Event(c)),
          (c.type = (b === this.widgetEventPrefix
            ? b
            : this.widgetEventPrefix + b
          ).toLowerCase()),
          (c.target = this.element[0]),
          (f = c.originalEvent);
        if (f) for (e in f) e in c || (c[e] = f[e]);
        this.element.trigger(c, d);
        return !(
          (a.isFunction(g) && g.call(this.element[0], c, d) === !1) ||
          c.isDefaultPrevented()
        );
      },
    });
})(jQuery);
(function (a, b) {
  var c = !1;
  a(document).mouseup(function (a) {
    c = !1;
  }),
    a.widget("ui.mouse", {
      options: { cancel: ":input,option", distance: 1, delay: 0 },
      _mouseInit: function () {
        var b = this;
        this.element
          .bind("mousedown." + this.widgetName, function (a) {
            return b._mouseDown(a);
          })
          .bind("click." + this.widgetName, function (c) {
            if (!0 === a.data(c.target, b.widgetName + ".preventClickEvent")) {
              a.removeData(c.target, b.widgetName + ".preventClickEvent"),
                c.stopImmediatePropagation();
              return !1;
            }
          }),
          (this.started = !1);
      },
      _mouseDestroy: function () {
        this.element.unbind("." + this.widgetName);
      },
      _mouseDown: function (b) {
        if (!c) {
          this._mouseStarted && this._mouseUp(b), (this._mouseDownEvent = b);
          var d = this,
            e = b.which == 1,
            f =
              typeof this.options.cancel == "string" && b.target.nodeName
                ? a(b.target).closest(this.options.cancel).length
                : !1;
          if (!e || f || !this._mouseCapture(b)) return !0;
          (this.mouseDelayMet = !this.options.delay),
            this.mouseDelayMet ||
              (this._mouseDelayTimer = setTimeout(function () {
                d.mouseDelayMet = !0;
              }, this.options.delay));
          if (this._mouseDistanceMet(b) && this._mouseDelayMet(b)) {
            this._mouseStarted = this._mouseStart(b) !== !1;
            if (!this._mouseStarted) {
              b.preventDefault();
              return !0;
            }
          }
          !0 === a.data(b.target, this.widgetName + ".preventClickEvent") &&
            a.removeData(b.target, this.widgetName + ".preventClickEvent"),
            (this._mouseMoveDelegate = function (a) {
              return d._mouseMove(a);
            }),
            (this._mouseUpDelegate = function (a) {
              return d._mouseUp(a);
            }),
            a(document)
              .bind("mousemove." + this.widgetName, this._mouseMoveDelegate)
              .bind("mouseup." + this.widgetName, this._mouseUpDelegate),
            b.preventDefault(),
            (c = !0);
          return !0;
        }
      },
      _mouseMove: function (b) {
        if (a.browser.msie && !(document.documentMode >= 9) && !b.button)
          return this._mouseUp(b);
        if (this._mouseStarted) {
          this._mouseDrag(b);
          return b.preventDefault();
        }
        this._mouseDistanceMet(b) &&
          this._mouseDelayMet(b) &&
          ((this._mouseStarted =
            this._mouseStart(this._mouseDownEvent, b) !== !1),
          this._mouseStarted ? this._mouseDrag(b) : this._mouseUp(b));
        return !this._mouseStarted;
      },
      _mouseUp: function (b) {
        a(document)
          .unbind("mousemove." + this.widgetName, this._mouseMoveDelegate)
          .unbind("mouseup." + this.widgetName, this._mouseUpDelegate),
          this._mouseStarted &&
            ((this._mouseStarted = !1),
            b.target == this._mouseDownEvent.target &&
              a.data(b.target, this.widgetName + ".preventClickEvent", !0),
            this._mouseStop(b));
        return !1;
      },
      _mouseDistanceMet: function (a) {
        return (
          Math.max(
            Math.abs(this._mouseDownEvent.pageX - a.pageX),
            Math.abs(this._mouseDownEvent.pageY - a.pageY)
          ) >= this.options.distance
        );
      },
      _mouseDelayMet: function (a) {
        return this.mouseDelayMet;
      },
      _mouseStart: function (a) {},
      _mouseDrag: function (a) {},
      _mouseStop: function (a) {},
      _mouseCapture: function (a) {
        return !0;
      },
    });
})(jQuery);
(function (a, b) {
  a.ui = a.ui || {};
  var c = /left|center|right/,
    d = /top|center|bottom/,
    e = "center",
    f = {},
    g = a.fn.position,
    h = a.fn.offset;
  (a.fn.position = function (b) {
    if (!b || !b.of) return g.apply(this, arguments);
    b = a.extend({}, b);
    var h = a(b.of),
      i = h[0],
      j = (b.collision || "flip").split(" "),
      k = b.offset ? b.offset.split(" ") : [0, 0],
      l,
      m,
      n;
    i.nodeType === 9
      ? ((l = h.width()), (m = h.height()), (n = { top: 0, left: 0 }))
      : i.setTimeout
      ? ((l = h.width()),
        (m = h.height()),
        (n = { top: h.scrollTop(), left: h.scrollLeft() }))
      : i.preventDefault
      ? ((b.at = "left top"),
        (l = m = 0),
        (n = { top: b.of.pageY, left: b.of.pageX }))
      : ((l = h.outerWidth()), (m = h.outerHeight()), (n = h.offset())),
      a.each(["my", "at"], function () {
        var a = (b[this] || "").split(" ");
        a.length === 1 &&
          (a = c.test(a[0])
            ? a.concat([e])
            : d.test(a[0])
            ? [e].concat(a)
            : [e, e]),
          (a[0] = c.test(a[0]) ? a[0] : e),
          (a[1] = d.test(a[1]) ? a[1] : e),
          (b[this] = a);
      }),
      j.length === 1 && (j[1] = j[0]),
      (k[0] = parseInt(k[0], 10) || 0),
      k.length === 1 && (k[1] = k[0]),
      (k[1] = parseInt(k[1], 10) || 0),
      b.at[0] === "right" ? (n.left += l) : b.at[0] === e && (n.left += l / 2),
      b.at[1] === "bottom" ? (n.top += m) : b.at[1] === e && (n.top += m / 2),
      (n.left += k[0]),
      (n.top += k[1]);
    return this.each(function () {
      var c = a(this),
        d = c.outerWidth(),
        g = c.outerHeight(),
        h = parseInt(a.curCSS(this, "marginLeft", !0)) || 0,
        i = parseInt(a.curCSS(this, "marginTop", !0)) || 0,
        o = d + h + (parseInt(a.curCSS(this, "marginRight", !0)) || 0),
        p = g + i + (parseInt(a.curCSS(this, "marginBottom", !0)) || 0),
        q = a.extend({}, n),
        r;
      b.my[0] === "right" ? (q.left -= d) : b.my[0] === e && (q.left -= d / 2),
        b.my[1] === "bottom" ? (q.top -= g) : b.my[1] === e && (q.top -= g / 2),
        f.fractions ||
          ((q.left = Math.round(q.left)), (q.top = Math.round(q.top))),
        (r = { left: q.left - h, top: q.top - i }),
        a.each(["left", "top"], function (c, e) {
          a.ui.position[j[c]] &&
            a.ui.position[j[c]][e](q, {
              targetWidth: l,
              targetHeight: m,
              elemWidth: d,
              elemHeight: g,
              collisionPosition: r,
              collisionWidth: o,
              collisionHeight: p,
              offset: k,
              my: b.my,
              at: b.at,
            });
        }),
        a.fn.bgiframe && c.bgiframe(),
        c.offset(a.extend(q, { using: b.using }));
    });
  }),
    (a.ui.position = {
      fit: {
        left: function (b, c) {
          var d = a(window),
            e =
              c.collisionPosition.left +
              c.collisionWidth -
              d.width() -
              d.scrollLeft();
          b.left =
            e > 0
              ? b.left - e
              : Math.max(b.left - c.collisionPosition.left, b.left);
        },
        top: function (b, c) {
          var d = a(window),
            e =
              c.collisionPosition.top +
              c.collisionHeight -
              d.height() -
              d.scrollTop();
          b.top =
            e > 0
              ? b.top - e
              : Math.max(b.top - c.collisionPosition.top, b.top);
        },
      },
      flip: {
        left: function (b, c) {
          if (c.at[0] !== e) {
            var d = a(window),
              f =
                c.collisionPosition.left +
                c.collisionWidth -
                d.width() -
                d.scrollLeft(),
              g =
                c.my[0] === "left"
                  ? -c.elemWidth
                  : c.my[0] === "right"
                  ? c.elemWidth
                  : 0,
              h = c.at[0] === "left" ? c.targetWidth : -c.targetWidth,
              i = -2 * c.offset[0];
            b.left +=
              c.collisionPosition.left < 0 ? g + h + i : f > 0 ? g + h + i : 0;
          }
        },
        top: function (b, c) {
          if (c.at[1] !== e) {
            var d = a(window),
              f =
                c.collisionPosition.top +
                c.collisionHeight -
                d.height() -
                d.scrollTop(),
              g =
                c.my[1] === "top"
                  ? -c.elemHeight
                  : c.my[1] === "bottom"
                  ? c.elemHeight
                  : 0,
              h = c.at[1] === "top" ? c.targetHeight : -c.targetHeight,
              i = -2 * c.offset[1];
            b.top +=
              c.collisionPosition.top < 0 ? g + h + i : f > 0 ? g + h + i : 0;
          }
        },
      },
    }),
    a.offset.setOffset ||
      ((a.offset.setOffset = function (b, c) {
        /static/.test(a.curCSS(b, "position")) &&
          (b.style.position = "relative");
        var d = a(b),
          e = d.offset(),
          f = parseInt(a.curCSS(b, "top", !0), 10) || 0,
          g = parseInt(a.curCSS(b, "left", !0), 10) || 0,
          h = { top: c.top - e.top + f, left: c.left - e.left + g };
        "using" in c ? c.using.call(b, h) : d.css(h);
      }),
      (a.fn.offset = function (b) {
        var c = this[0];
        if (!c || !c.ownerDocument) return null;
        if (b)
          return this.each(function () {
            a.offset.setOffset(this, b);
          });
        return h.call(this);
      })),
    (function () {
      var b = document.getElementsByTagName("body")[0],
        c = document.createElement("div"),
        d,
        e,
        g,
        h,
        i;
      (d = document.createElement(b ? "div" : "body")),
        (g = {
          visibility: "hidden",
          width: 0,
          height: 0,
          border: 0,
          margin: 0,
          background: "none",
        }),
        b &&
          a.extend(g, {
            position: "absolute",
            left: "-1000px",
            top: "-1000px",
          });
      for (var j in g) d.style[j] = g[j];
      d.appendChild(c),
        (e = b || document.documentElement),
        e.insertBefore(d, e.firstChild),
        (c.style.cssText =
          "position: absolute; left: 10.7432222px; top: 10.432325px; height: 30px; width: 201px;"),
        (h = a(c)
          .offset(function (a, b) {
            return b;
          })
          .offset()),
        (d.innerHTML = ""),
        e.removeChild(d),
        (i = h.top + h.left + (b ? 2e3 : 0)),
        (f.fractions = i > 21 && i < 22);
    })();
})(jQuery);
jQuery.effects ||
  (function ($, undefined) {
    $.effects = {};
    $.each(
      [
        "backgroundColor",
        "borderBottomColor",
        "borderLeftColor",
        "borderRightColor",
        "borderTopColor",
        "borderColor",
        "color",
        "outlineColor",
      ],
      function (i, attr) {
        $.fx.step[attr] = function (fx) {
          if (!fx.colorInit) {
            fx.start = getColor(fx.elem, attr);
            fx.end = getRGB(fx.end);
            fx.colorInit = true;
          }
          fx.elem.style[attr] =
            "rgb(" +
            Math.max(
              Math.min(
                parseInt(fx.pos * (fx.end[0] - fx.start[0]) + fx.start[0], 10),
                255
              ),
              0
            ) +
            "," +
            Math.max(
              Math.min(
                parseInt(fx.pos * (fx.end[1] - fx.start[1]) + fx.start[1], 10),
                255
              ),
              0
            ) +
            "," +
            Math.max(
              Math.min(
                parseInt(fx.pos * (fx.end[2] - fx.start[2]) + fx.start[2], 10),
                255
              ),
              0
            ) +
            ")";
        };
      }
    );
    function getRGB(color) {
      var result;
      if (color && color.constructor == Array && color.length == 3)
        return color;
      if (
        (result = /rgb\(\s*([0-9]{1,3})\s*,\s*([0-9]{1,3})\s*,\s*([0-9]{1,3})\s*\)/.exec(
          color
        ))
      )
        return [
          parseInt(result[1], 10),
          parseInt(result[2], 10),
          parseInt(result[3], 10),
        ];
      if (
        (result = /rgb\(\s*([0-9]+(?:\.[0-9]+)?)\%\s*,\s*([0-9]+(?:\.[0-9]+)?)\%\s*,\s*([0-9]+(?:\.[0-9]+)?)\%\s*\)/.exec(
          color
        ))
      )
        return [
          parseFloat(result[1]) * 2.55,
          parseFloat(result[2]) * 2.55,
          parseFloat(result[3]) * 2.55,
        ];
      if (
        (result = /#([a-fA-F0-9]{2})([a-fA-F0-9]{2})([a-fA-F0-9]{2})/.exec(
          color
        ))
      )
        return [
          parseInt(result[1], 16),
          parseInt(result[2], 16),
          parseInt(result[3], 16),
        ];
      if ((result = /#([a-fA-F0-9])([a-fA-F0-9])([a-fA-F0-9])/.exec(color)))
        return [
          parseInt(result[1] + result[1], 16),
          parseInt(result[2] + result[2], 16),
          parseInt(result[3] + result[3], 16),
        ];
      if ((result = /rgba\(0, 0, 0, 0\)/.exec(color)))
        return colors["transparent"];
      return colors[$.trim(color).toLowerCase()];
    }
    function getColor(elem, attr) {
      var color;
      do {
        color = $.curCSS(elem, attr);
        if ((color != "" && color != "transparent") || $.nodeName(elem, "body"))
          break;
        attr = "backgroundColor";
      } while ((elem = elem.parentNode));
      return getRGB(color);
    }
    var colors = {
      aqua: [0, 255, 255],
      azure: [240, 255, 255],
      beige: [245, 245, 220],
      black: [0, 0, 0],
      blue: [0, 0, 255],
      brown: [165, 42, 42],
      cyan: [0, 255, 255],
      darkblue: [0, 0, 139],
      darkcyan: [0, 139, 139],
      darkgrey: [169, 169, 169],
      darkgreen: [0, 100, 0],
      darkkhaki: [189, 183, 107],
      darkmagenta: [139, 0, 139],
      darkolivegreen: [85, 107, 47],
      darkorange: [255, 140, 0],
      darkorchid: [153, 50, 204],
      darkred: [139, 0, 0],
      darksalmon: [233, 150, 122],
      darkviolet: [148, 0, 211],
      fuchsia: [255, 0, 255],
      gold: [255, 215, 0],
      green: [0, 128, 0],
      indigo: [75, 0, 130],
      khaki: [240, 230, 140],
      lightblue: [173, 216, 230],
      lightcyan: [224, 255, 255],
      lightgreen: [144, 238, 144],
      lightgrey: [211, 211, 211],
      lightpink: [255, 182, 193],
      lightyellow: [255, 255, 224],
      lime: [0, 255, 0],
      magenta: [255, 0, 255],
      maroon: [128, 0, 0],
      navy: [0, 0, 128],
      olive: [128, 128, 0],
      orange: [255, 165, 0],
      pink: [255, 192, 203],
      purple: [128, 0, 128],
      violet: [128, 0, 128],
      red: [255, 0, 0],
      silver: [192, 192, 192],
      white: [255, 255, 255],
      yellow: [255, 255, 0],
      transparent: [255, 255, 255],
    };
    var classAnimationActions = ["add", "remove", "toggle"],
      shorthandStyles = {
        border: 1,
        borderBottom: 1,
        borderColor: 1,
        borderLeft: 1,
        borderRight: 1,
        borderTop: 1,
        borderWidth: 1,
        margin: 1,
        padding: 1,
      };
    function getElementStyles() {
      var style = document.defaultView
          ? document.defaultView.getComputedStyle(this, null)
          : this.currentStyle,
        newStyle = {},
        key,
        camelCase;
      if (style && style.length && style[0] && style[style[0]]) {
        var len = style.length;
        while (len--) {
          key = style[len];
          if (typeof style[key] == "string") {
            camelCase = key.replace(/\-(\w)/g, function (all, letter) {
              return letter.toUpperCase();
            });
            newStyle[camelCase] = style[key];
          }
        }
      } else {
        for (key in style) {
          if (typeof style[key] === "string") {
            newStyle[key] = style[key];
          }
        }
      }
      return newStyle;
    }
    function filterStyles(styles) {
      var name, value;
      for (name in styles) {
        value = styles[name];
        if (
          value == null ||
          $.isFunction(value) ||
          name in shorthandStyles ||
          /scrollbar/.test(name) ||
          (!/color/i.test(name) && isNaN(parseFloat(value)))
        ) {
          delete styles[name];
        }
      }
      return styles;
    }
    function styleDifference(oldStyle, newStyle) {
      var diff = { _: 0 },
        name;
      for (name in newStyle) {
        if (oldStyle[name] != newStyle[name]) {
          diff[name] = newStyle[name];
        }
      }
      return diff;
    }
    $.effects.animateClass = function (value, duration, easing, callback) {
      if ($.isFunction(easing)) {
        callback = easing;
        easing = null;
      }
      return this.queue(function () {
        var that = $(this),
          originalStyleAttr = that.attr("style") || " ",
          originalStyle = filterStyles(getElementStyles.call(this)),
          newStyle,
          className = that.attr("class");
        $.each(classAnimationActions, function (i, action) {
          if (value[action]) {
            that[action + "Class"](value[action]);
          }
        });
        newStyle = filterStyles(getElementStyles.call(this));
        that.attr("class", className);
        that.animate(styleDifference(originalStyle, newStyle), {
          queue: false,
          duration: duration,
          easing: easing,
          complete: function () {
            $.each(classAnimationActions, function (i, action) {
              if (value[action]) {
                that[action + "Class"](value[action]);
              }
            });
            if (typeof that.attr("style") == "object") {
              that.attr("style").cssText = "";
              that.attr("style").cssText = originalStyleAttr;
            } else {
              that.attr("style", originalStyleAttr);
            }
            if (callback) {
              callback.apply(this, arguments);
            }
            $.dequeue(this);
          },
        });
      });
    };
    $.fn.extend({
      _addClass: $.fn.addClass,
      addClass: function (classNames, speed, easing, callback) {
        return speed
          ? $.effects.animateClass.apply(this, [
              { add: classNames },
              speed,
              easing,
              callback,
            ])
          : this._addClass(classNames);
      },
      _removeClass: $.fn.removeClass,
      removeClass: function (classNames, speed, easing, callback) {
        return speed
          ? $.effects.animateClass.apply(this, [
              { remove: classNames },
              speed,
              easing,
              callback,
            ])
          : this._removeClass(classNames);
      },
      _toggleClass: $.fn.toggleClass,
      toggleClass: function (classNames, force, speed, easing, callback) {
        if (typeof force == "boolean" || force === undefined) {
          if (!speed) {
            return this._toggleClass(classNames, force);
          } else {
            return $.effects.animateClass.apply(this, [
              force ? { add: classNames } : { remove: classNames },
              speed,
              easing,
              callback,
            ]);
          }
        } else {
          return $.effects.animateClass.apply(this, [
            { toggle: classNames },
            force,
            speed,
            easing,
          ]);
        }
      },
      switchClass: function (remove, add, speed, easing, callback) {
        return $.effects.animateClass.apply(this, [
          { add: add, remove: remove },
          speed,
          easing,
          callback,
        ]);
      },
    });
    $.extend($.effects, {
      version: "1.8.18",
      save: function (element, set) {
        for (var i = 0; i < set.length; i++) {
          if (set[i] !== null)
            element.data("ec.storage." + set[i], element[0].style[set[i]]);
        }
      },
      restore: function (element, set) {
        for (var i = 0; i < set.length; i++) {
          if (set[i] !== null)
            element.css(set[i], element.data("ec.storage." + set[i]));
        }
      },
      setMode: function (el, mode) {
        if (mode == "toggle") mode = el.is(":hidden") ? "show" : "hide";
        return mode;
      },
      getBaseline: function (origin, original) {
        var y, x;
        switch (origin[0]) {
          case "top":
            y = 0;
            break;
          case "middle":
            y = 0.5;
            break;
          case "bottom":
            y = 1;
            break;
          default:
            y = origin[0] / original.height;
        }
        switch (origin[1]) {
          case "left":
            x = 0;
            break;
          case "center":
            x = 0.5;
            break;
          case "right":
            x = 1;
            break;
          default:
            x = origin[1] / original.width;
        }
        return { x: x, y: y };
      },
      createWrapper: function (element) {
        if (element.parent().is(".ui-effects-wrapper")) {
          return element.parent();
        }
        var props = {
            width: element.outerWidth(true),
            height: element.outerHeight(true),
            float: element.css("float"),
          },
          wrapper = $("<div></div>").addClass("ui-effects-wrapper").css({
            fontSize: "100%",
            background: "transparent",
            border: "none",
            margin: 0,
            padding: 0,
          }),
          active = document.activeElement;
        element.wrap(wrapper);
        if (element[0] === active || $.contains(element[0], active)) {
          $(active).focus();
        }
        wrapper = element.parent();
        if (element.css("position") == "static") {
          wrapper.css({ position: "relative" });
          element.css({ position: "relative" });
        } else {
          $.extend(props, {
            position: element.css("position"),
            zIndex: element.css("z-index"),
          });
          $.each(["top", "left", "bottom", "right"], function (i, pos) {
            props[pos] = element.css(pos);
            if (isNaN(parseInt(props[pos], 10))) {
              props[pos] = "auto";
            }
          });
          element.css({
            position: "relative",
            top: 0,
            left: 0,
            right: "auto",
            bottom: "auto",
          });
        }
        return wrapper.css(props).show();
      },
      removeWrapper: function (element) {
        var parent,
          active = document.activeElement;
        if (element.parent().is(".ui-effects-wrapper")) {
          parent = element.parent().replaceWith(element);
          if (element[0] === active || $.contains(element[0], active)) {
            $(active).focus();
          }
          return parent;
        }
        return element;
      },
      setTransition: function (element, list, factor, value) {
        value = value || {};
        $.each(list, function (i, x) {
          unit = element.cssUnit(x);
          if (unit[0] > 0) value[x] = unit[0] * factor + unit[1];
        });
        return value;
      },
    });
    function _normalizeArguments(effect, options, speed, callback) {
      if (typeof effect == "object") {
        callback = options;
        speed = null;
        options = effect;
        effect = options.effect;
      }
      if ($.isFunction(options)) {
        callback = options;
        speed = null;
        options = {};
      }
      if (typeof options == "number" || $.fx.speeds[options]) {
        callback = speed;
        speed = options;
        options = {};
      }
      if ($.isFunction(speed)) {
        callback = speed;
        speed = null;
      }
      options = options || {};
      speed = speed || options.duration;
      speed = $.fx.off
        ? 0
        : typeof speed == "number"
        ? speed
        : speed in $.fx.speeds
        ? $.fx.speeds[speed]
        : $.fx.speeds._default;
      callback = callback || options.complete;
      return [effect, options, speed, callback];
    }
    function standardSpeed(speed) {
      if (!speed || typeof speed === "number" || $.fx.speeds[speed]) {
        return true;
      }
      if (typeof speed === "string" && !$.effects[speed]) {
        return true;
      }
      return false;
    }
    $.fn.extend({
      effect: function (effect, options, speed, callback) {
        var args = _normalizeArguments.apply(this, arguments),
          args2 = { options: args[1], duration: args[2], callback: args[3] },
          mode = args2.options.mode,
          effectMethod = $.effects[effect];
        if ($.fx.off || !effectMethod) {
          if (mode) {
            return this[mode](args2.duration, args2.callback);
          } else {
            return this.each(function () {
              if (args2.callback) {
                args2.callback.call(this);
              }
            });
          }
        }
        return effectMethod.call(this, args2);
      },
      _show: $.fn.show,
      show: function (speed) {
        if (standardSpeed(speed)) {
          return this._show.apply(this, arguments);
        } else {
          var args = _normalizeArguments.apply(this, arguments);
          args[1].mode = "show";
          return this.effect.apply(this, args);
        }
      },
      _hide: $.fn.hide,
      hide: function (speed) {
        if (standardSpeed(speed)) {
          return this._hide.apply(this, arguments);
        } else {
          var args = _normalizeArguments.apply(this, arguments);
          args[1].mode = "hide";
          return this.effect.apply(this, args);
        }
      },
      __toggle: $.fn.toggle,
      toggle: function (speed) {
        if (
          standardSpeed(speed) ||
          typeof speed === "boolean" ||
          $.isFunction(speed)
        ) {
          return this.__toggle.apply(this, arguments);
        } else {
          var args = _normalizeArguments.apply(this, arguments);
          args[1].mode = "toggle";
          return this.effect.apply(this, args);
        }
      },
      cssUnit: function (key) {
        var style = this.css(key),
          val = [];
        $.each(["em", "px", "%", "pt"], function (i, unit) {
          if (style.indexOf(unit) > 0) val = [parseFloat(style), unit];
        });
        return val;
      },
    });
    $.easing.jswing = $.easing.swing;
    $.extend($.easing, {
      def: "easeOutQuad",
      swing: function (x, t, b, c, d) {
        return $.easing[$.easing.def](x, t, b, c, d);
      },
      easeInQuad: function (x, t, b, c, d) {
        return c * (t /= d) * t + b;
      },
      easeOutQuad: function (x, t, b, c, d) {
        return -c * (t /= d) * (t - 2) + b;
      },
      easeInOutQuad: function (x, t, b, c, d) {
        if ((t /= d / 2) < 1) return (c / 2) * t * t + b;
        return (-c / 2) * (--t * (t - 2) - 1) + b;
      },
      easeInCubic: function (x, t, b, c, d) {
        return c * (t /= d) * t * t + b;
      },
      easeOutCubic: function (x, t, b, c, d) {
        return c * ((t = t / d - 1) * t * t + 1) + b;
      },
      easeInOutCubic: function (x, t, b, c, d) {
        if ((t /= d / 2) < 1) return (c / 2) * t * t * t + b;
        return (c / 2) * ((t -= 2) * t * t + 2) + b;
      },
      easeInQuart: function (x, t, b, c, d) {
        return c * (t /= d) * t * t * t + b;
      },
      easeOutQuart: function (x, t, b, c, d) {
        return -c * ((t = t / d - 1) * t * t * t - 1) + b;
      },
      easeInOutQuart: function (x, t, b, c, d) {
        if ((t /= d / 2) < 1) return (c / 2) * t * t * t * t + b;
        return (-c / 2) * ((t -= 2) * t * t * t - 2) + b;
      },
      easeInQuint: function (x, t, b, c, d) {
        return c * (t /= d) * t * t * t * t + b;
      },
      easeOutQuint: function (x, t, b, c, d) {
        return c * ((t = t / d - 1) * t * t * t * t + 1) + b;
      },
      easeInOutQuint: function (x, t, b, c, d) {
        if ((t /= d / 2) < 1) return (c / 2) * t * t * t * t * t + b;
        return (c / 2) * ((t -= 2) * t * t * t * t + 2) + b;
      },
      easeInSine: function (x, t, b, c, d) {
        return -c * Math.cos((t / d) * (Math.PI / 2)) + c + b;
      },
      easeOutSine: function (x, t, b, c, d) {
        return c * Math.sin((t / d) * (Math.PI / 2)) + b;
      },
      easeInOutSine: function (x, t, b, c, d) {
        return (-c / 2) * (Math.cos((Math.PI * t) / d) - 1) + b;
      },
      easeInExpo: function (x, t, b, c, d) {
        return t == 0 ? b : c * Math.pow(2, 10 * (t / d - 1)) + b;
      },
      easeOutExpo: function (x, t, b, c, d) {
        return t == d ? b + c : c * (-Math.pow(2, (-10 * t) / d) + 1) + b;
      },
      easeInOutExpo: function (x, t, b, c, d) {
        if (t == 0) return b;
        if (t == d) return b + c;
        if ((t /= d / 2) < 1) return (c / 2) * Math.pow(2, 10 * (t - 1)) + b;
        return (c / 2) * (-Math.pow(2, -10 * --t) + 2) + b;
      },
      easeInCirc: function (x, t, b, c, d) {
        return -c * (Math.sqrt(1 - (t /= d) * t) - 1) + b;
      },
      easeOutCirc: function (x, t, b, c, d) {
        return c * Math.sqrt(1 - (t = t / d - 1) * t) + b;
      },
      easeInOutCirc: function (x, t, b, c, d) {
        if ((t /= d / 2) < 1) return (-c / 2) * (Math.sqrt(1 - t * t) - 1) + b;
        return (c / 2) * (Math.sqrt(1 - (t -= 2) * t) + 1) + b;
      },
      easeInElastic: function (x, t, b, c, d) {
        var s = 1.70158;
        var p = 0;
        var a = c;
        if (t == 0) return b;
        if ((t /= d) == 1) return b + c;
        if (!p) p = d * 0.3;
        if (a < Math.abs(c)) {
          a = c;
          var s = p / 4;
        } else var s = (p / (2 * Math.PI)) * Math.asin(c / a);
        return (
          -(
            a *
            Math.pow(2, 10 * (t -= 1)) *
            Math.sin(((t * d - s) * (2 * Math.PI)) / p)
          ) + b
        );
      },
      easeOutElastic: function (x, t, b, c, d) {
        var s = 1.70158;
        var p = 0;
        var a = c;
        if (t == 0) return b;
        if ((t /= d) == 1) return b + c;
        if (!p) p = d * 0.3;
        if (a < Math.abs(c)) {
          a = c;
          var s = p / 4;
        } else var s = (p / (2 * Math.PI)) * Math.asin(c / a);
        return (
          a *
            Math.pow(2, -10 * t) *
            Math.sin(((t * d - s) * (2 * Math.PI)) / p) +
          c +
          b
        );
      },
      easeInOutElastic: function (x, t, b, c, d) {
        var s = 1.70158;
        var p = 0;
        var a = c;
        if (t == 0) return b;
        if ((t /= d / 2) == 2) return b + c;
        if (!p) p = d * (0.3 * 1.5);
        if (a < Math.abs(c)) {
          a = c;
          var s = p / 4;
        } else var s = (p / (2 * Math.PI)) * Math.asin(c / a);
        if (t < 1)
          return (
            -0.5 *
              (a *
                Math.pow(2, 10 * (t -= 1)) *
                Math.sin(((t * d - s) * (2 * Math.PI)) / p)) +
            b
          );
        return (
          a *
            Math.pow(2, -10 * (t -= 1)) *
            Math.sin(((t * d - s) * (2 * Math.PI)) / p) *
            0.5 +
          c +
          b
        );
      },
      easeInBack: function (x, t, b, c, d, s) {
        if (s == undefined) s = 1.70158;
        return c * (t /= d) * t * ((s + 1) * t - s) + b;
      },
      easeOutBack: function (x, t, b, c, d, s) {
        if (s == undefined) s = 1.70158;
        return c * ((t = t / d - 1) * t * ((s + 1) * t + s) + 1) + b;
      },
      easeInOutBack: function (x, t, b, c, d, s) {
        if (s == undefined) s = 1.70158;
        if ((t /= d / 2) < 1)
          return (c / 2) * (t * t * (((s *= 1.525) + 1) * t - s)) + b;
        return (c / 2) * ((t -= 2) * t * (((s *= 1.525) + 1) * t + s) + 2) + b;
      },
      easeInBounce: function (x, t, b, c, d) {
        return c - $.easing.easeOutBounce(x, d - t, 0, c, d) + b;
      },
      easeOutBounce: function (x, t, b, c, d) {
        if ((t /= d) < 1 / 2.75) {
          return c * (7.5625 * t * t) + b;
        } else if (t < 2 / 2.75) {
          return c * (7.5625 * (t -= 1.5 / 2.75) * t + 0.75) + b;
        } else if (t < 2.5 / 2.75) {
          return c * (7.5625 * (t -= 2.25 / 2.75) * t + 0.9375) + b;
        } else {
          return c * (7.5625 * (t -= 2.625 / 2.75) * t + 0.984375) + b;
        }
      },
      easeInOutBounce: function (x, t, b, c, d) {
        if (t < d / 2)
          return $.easing.easeInBounce(x, t * 2, 0, c, d) * 0.5 + b;
        return (
          $.easing.easeOutBounce(x, t * 2 - d, 0, c, d) * 0.5 + c * 0.5 + b
        );
      },
    });
  })(jQuery);
(function ($, undefined) {
  $.extend($.ui, { datepicker: { version: "1.8.18" } });
  var PROP_NAME = "datepicker";
  var dpuuid = new Date().getTime();
  var instActive;
  function Datepicker() {
    this.debug = false;
    this._curInst = null;
    this._keyEvent = false;
    this._disabledInputs = [];
    this._datepickerShowing = false;
    this._inDialog = false;
    this._mainDivId = "ui-datepicker-div";
    this._inlineClass = "ui-datepicker-inline";
    this._appendClass = "ui-datepicker-append";
    this._triggerClass = "ui-datepicker-trigger";
    this._dialogClass = "ui-datepicker-dialog";
    this._disableClass = "ui-datepicker-disabled";
    this._unselectableClass = "ui-datepicker-unselectable";
    this._currentClass = "ui-datepicker-current-day";
    this._dayOverClass = "ui-datepicker-days-cell-over";
    this.regional = [];
    this.regional[""] = {
      closeText: "Done",
      prevText: "Prev",
      nextText: "Next",
      currentText: "Today",
      monthNames: [
        "January",
        "February",
        "March",
        "April",
        "May",
        "June",
        "July",
        "August",
        "September",
        "October",
        "November",
        "December",
      ],
      monthNamesShort: [
        "Jan",
        "Feb",
        "Mar",
        "Apr",
        "May",
        "Jun",
        "Jul",
        "Aug",
        "Sep",
        "Oct",
        "Nov",
        "Dec",
      ],
      dayNames: [
        "Sunday",
        "Monday",
        "Tuesday",
        "Wednesday",
        "Thursday",
        "Friday",
        "Saturday",
      ],
      dayNamesShort: ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"],
      dayNamesMin: ["Su", "Mo", "Tu", "We", "Th", "Fr", "Sa"],
      weekHeader: "Wk",
      dateFormat: "mm/dd/yy",
      firstDay: 0,
      isRTL: false,
      showMonthAfterYear: false,
      yearSuffix: "",
    };
    this._defaults = {
      showOn: "focus",
      showAnim: "fadeIn",
      showOptions: {},
      defaultDate: null,
      appendText: "",
      buttonText: "...",
      buttonImage: "",
      buttonImageOnly: false,
      hideIfNoPrevNext: false,
      navigationAsDateFormat: false,
      gotoCurrent: false,
      changeMonth: false,
      changeYear: false,
      yearRange: "c-10:c+10",
      showOtherMonths: false,
      selectOtherMonths: false,
      showWeek: false,
      calculateWeek: this.iso8601Week,
      shortYearCutoff: "+10",
      minDate: null,
      maxDate: null,
      duration: "fast",
      beforeShowDay: null,
      beforeShow: null,
      onSelect: null,
      onChangeMonthYear: null,
      onClose: null,
      numberOfMonths: 1,
      showCurrentAtPos: 0,
      stepMonths: 1,
      stepBigMonths: 12,
      altField: "",
      altFormat: "",
      constrainInput: true,
      showButtonPanel: false,
      autoSize: false,
      disabled: false,
    };
    $.extend(this._defaults, this.regional[""]);
    this.dpDiv = bindHover(
      $(
        '<div id="' +
          this._mainDivId +
          '" class="ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all"></div>'
      )
    );
  }
  $.extend(Datepicker.prototype, {
    markerClassName: "hasDatepicker",
    maxRows: 4,
    log: function () {
      if (this.debug) console.log.apply("", arguments);
    },
    _widgetDatepicker: function () {
      return this.dpDiv;
    },
    setDefaults: function (settings) {
      extendRemove(this._defaults, settings || {});
      return this;
    },
    _attachDatepicker: function (target, settings) {
      var inlineSettings = null;
      for (var attrName in this._defaults) {
        var attrValue = target.getAttribute("date:" + attrName);
        if (attrValue) {
          inlineSettings = inlineSettings || {};
          try {
            inlineSettings[attrName] = eval(attrValue);
          } catch (err) {
            inlineSettings[attrName] = attrValue;
          }
        }
      }
      var nodeName = target.nodeName.toLowerCase();
      var inline = nodeName == "div" || nodeName == "span";
      if (!target.id) {
        this.uuid += 1;
        target.id = "dp" + this.uuid;
      }
      var inst = this._newInst($(target), inline);
      inst.settings = $.extend({}, settings || {}, inlineSettings || {});
      if (nodeName == "input") {
        this._connectDatepicker(target, inst);
      } else if (inline) {
        this._inlineDatepicker(target, inst);
      }
    },
    _newInst: function (target, inline) {
      var id = target[0].id.replace(/([^A-Za-z0-9_-])/g, "\\\\$1");
      return {
        id: id,
        input: target,
        selectedDay: 0,
        selectedMonth: 0,
        selectedYear: 0,
        drawMonth: 0,
        drawYear: 0,
        inline: inline,
        dpDiv: !inline
          ? this.dpDiv
          : bindHover(
              $(
                '<div class="' +
                  this._inlineClass +
                  ' ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all"></div>'
              )
            ),
      };
    },
    _connectDatepicker: function (target, inst) {
      var input = $(target);
      inst.append = $([]);
      inst.trigger = $([]);
      if (input.hasClass(this.markerClassName)) return;
      this._attachments(input, inst);
      input
        .addClass(this.markerClassName)
        .keydown(this._doKeyDown)
        .keypress(this._doKeyPress)
        .keyup(this._doKeyUp)
        .bind("setData.datepicker", function (event, key, value) {
          inst.settings[key] = value;
        })
        .bind("getData.datepicker", function (event, key) {
          return this._get(inst, key);
        });
      this._autoSize(inst);
      $.data(target, PROP_NAME, inst);
      if (inst.settings.disabled) {
        this._disableDatepicker(target);
      }
    },
    _attachments: function (input, inst) {
      var appendText = this._get(inst, "appendText");
      var isRTL = this._get(inst, "isRTL");
      if (inst.append) inst.append.remove();
      if (appendText) {
        inst.append = $(
          '<span class="' + this._appendClass + '">' + appendText + "</span>"
        );
        input[isRTL ? "before" : "after"](inst.append);
      }
      input.unbind("focus", this._showDatepicker);
      if (inst.trigger) inst.trigger.remove();
      var showOn = this._get(inst, "showOn");
      if (showOn == "focus" || showOn == "both")
        input.focus(this._showDatepicker);
      if (showOn == "button" || showOn == "both") {
        var buttonText = this._get(inst, "buttonText");
        var buttonImage = this._get(inst, "buttonImage");
        inst.trigger = $(
          this._get(inst, "buttonImageOnly")
            ? $("<img/>")
                .addClass(this._triggerClass)
                .attr({ src: buttonImage, alt: buttonText, title: buttonText })
            : $('<button type="button"></button>')
                .addClass(this._triggerClass)
                .html(
                  buttonImage == ""
                    ? buttonText
                    : $("<img/>").attr({
                        src: buttonImage,
                        alt: buttonText,
                        title: buttonText,
                      })
                )
        );
        input[isRTL ? "before" : "after"](inst.trigger);
        inst.trigger.click(function () {
          if (
            $.datepicker._datepickerShowing &&
            $.datepicker._lastInput == input[0]
          )
            $.datepicker._hideDatepicker();
          else if (
            $.datepicker._datepickerShowing &&
            $.datepicker._lastInput != input[0]
          ) {
            $.datepicker._hideDatepicker();
            $.datepicker._showDatepicker(input[0]);
          } else $.datepicker._showDatepicker(input[0]);
          return false;
        });
      }
    },
    _autoSize: function (inst) {
      if (this._get(inst, "autoSize") && !inst.inline) {
        var date = new Date(2009, 12 - 1, 20);
        var dateFormat = this._get(inst, "dateFormat");
        if (dateFormat.match(/[DM]/)) {
          var findMax = function (names) {
            var max = 0;
            var maxI = 0;
            for (var i = 0; i < names.length; i++) {
              if (names[i].length > max) {
                max = names[i].length;
                maxI = i;
              }
            }
            return maxI;
          };
          date.setMonth(
            findMax(
              this._get(
                inst,
                dateFormat.match(/MM/) ? "monthNames" : "monthNamesShort"
              )
            )
          );
          date.setDate(
            findMax(
              this._get(
                inst,
                dateFormat.match(/DD/) ? "dayNames" : "dayNamesShort"
              )
            ) +
              20 -
              date.getDay()
          );
        }
        inst.input.attr("size", this._formatDate(inst, date).length);
      }
    },
    _inlineDatepicker: function (target, inst) {
      var divSpan = $(target);
      if (divSpan.hasClass(this.markerClassName)) return;
      divSpan
        .addClass(this.markerClassName)
        .append(inst.dpDiv)
        .bind("setData.datepicker", function (event, key, value) {
          inst.settings[key] = value;
        })
        .bind("getData.datepicker", function (event, key) {
          return this._get(inst, key);
        });
      $.data(target, PROP_NAME, inst);
      this._setDate(inst, this._getDefaultDate(inst), true);
      this._updateDatepicker(inst);
      this._updateAlternate(inst);
      if (inst.settings.disabled) {
        this._disableDatepicker(target);
      }
      inst.dpDiv.css("display", "block");
    },
    _dialogDatepicker: function (input, date, onSelect, settings, pos) {
      var inst = this._dialogInst;
      if (!inst) {
        this.uuid += 1;
        var id = "dp" + this.uuid;
        this._dialogInput = $(
          '<input type="text" id="' +
            id +
            '" style="position: absolute; top: -100px; width: 0px; z-index: -10;"/>'
        );
        this._dialogInput.keydown(this._doKeyDown);
        $("body").append(this._dialogInput);
        inst = this._dialogInst = this._newInst(this._dialogInput, false);
        inst.settings = {};
        $.data(this._dialogInput[0], PROP_NAME, inst);
      }
      extendRemove(inst.settings, settings || {});
      date =
        date && date.constructor == Date ? this._formatDate(inst, date) : date;
      this._dialogInput.val(date);
      this._pos = pos ? (pos.length ? pos : [pos.pageX, pos.pageY]) : null;
      if (!this._pos) {
        var browserWidth = document.documentElement.clientWidth;
        var browserHeight = document.documentElement.clientHeight;
        var scrollX =
          document.documentElement.scrollLeft || document.body.scrollLeft;
        var scrollY =
          document.documentElement.scrollTop || document.body.scrollTop;
        this._pos = [
          browserWidth / 2 - 100 + scrollX,
          browserHeight / 2 - 150 + scrollY,
        ];
      }
      this._dialogInput
        .css("left", this._pos[0] + 20 + "px")
        .css("top", this._pos[1] + "px");
      inst.settings.onSelect = onSelect;
      this._inDialog = true;
      this.dpDiv.addClass(this._dialogClass);
      this._showDatepicker(this._dialogInput[0]);
      if ($.blockUI) $.blockUI(this.dpDiv);
      $.data(this._dialogInput[0], PROP_NAME, inst);
      return this;
    },
    _destroyDatepicker: function (target) {
      var $target = $(target);
      var inst = $.data(target, PROP_NAME);
      if (!$target.hasClass(this.markerClassName)) {
        return;
      }
      var nodeName = target.nodeName.toLowerCase();
      $.removeData(target, PROP_NAME);
      if (nodeName == "input") {
        inst.append.remove();
        inst.trigger.remove();
        $target
          .removeClass(this.markerClassName)
          .unbind("focus", this._showDatepicker)
          .unbind("keydown", this._doKeyDown)
          .unbind("keypress", this._doKeyPress)
          .unbind("keyup", this._doKeyUp);
      } else if (nodeName == "div" || nodeName == "span")
        $target.removeClass(this.markerClassName).empty();
    },
    _enableDatepicker: function (target) {
      var $target = $(target);
      var inst = $.data(target, PROP_NAME);
      if (!$target.hasClass(this.markerClassName)) {
        return;
      }
      var nodeName = target.nodeName.toLowerCase();
      if (nodeName == "input") {
        target.disabled = false;
        inst.trigger
          .filter("button")
          .each(function () {
            this.disabled = false;
          })
          .end()
          .filter("img")
          .css({ opacity: "1.0", cursor: "" });
      } else if (nodeName == "div" || nodeName == "span") {
        var inline = $target.children("." + this._inlineClass);
        inline.children().removeClass("ui-state-disabled");
        inline
          .find("select.ui-datepicker-month, select.ui-datepicker-year")
          .removeAttr("disabled");
      }
      this._disabledInputs = $.map(this._disabledInputs, function (value) {
        return value == target ? null : value;
      });
    },
    _disableDatepicker: function (target) {
      var $target = $(target);
      var inst = $.data(target, PROP_NAME);
      if (!$target.hasClass(this.markerClassName)) {
        return;
      }
      var nodeName = target.nodeName.toLowerCase();
      if (nodeName == "input") {
        target.disabled = true;
        inst.trigger
          .filter("button")
          .each(function () {
            this.disabled = true;
          })
          .end()
          .filter("img")
          .css({ opacity: "0.5", cursor: "default" });
      } else if (nodeName == "div" || nodeName == "span") {
        var inline = $target.children("." + this._inlineClass);
        inline.children().addClass("ui-state-disabled");
        inline
          .find("select.ui-datepicker-month, select.ui-datepicker-year")
          .attr("disabled", "disabled");
      }
      this._disabledInputs = $.map(this._disabledInputs, function (value) {
        return value == target ? null : value;
      });
      this._disabledInputs[this._disabledInputs.length] = target;
    },
    _isDisabledDatepicker: function (target) {
      if (!target) {
        return false;
      }
      for (var i = 0; i < this._disabledInputs.length; i++) {
        if (this._disabledInputs[i] == target) return true;
      }
      return false;
    },
    _getInst: function (target) {
      try {
        return $.data(target, PROP_NAME);
      } catch (err) {
        throw "Missing instance data for this datepicker";
      }
    },
    _optionDatepicker: function (target, name, value) {
      var inst = this._getInst(target);
      if (arguments.length == 2 && typeof name == "string") {
        return name == "defaults"
          ? $.extend({}, $.datepicker._defaults)
          : inst
          ? name == "all"
            ? $.extend({}, inst.settings)
            : this._get(inst, name)
          : null;
      }
      var settings = name || {};
      if (typeof name == "string") {
        settings = {};
        settings[name] = value;
      }
      if (inst) {
        if (this._curInst == inst) {
          this._hideDatepicker();
        }
        var date = this._getDateDatepicker(target, true);
        var minDate = this._getMinMaxDate(inst, "min");
        var maxDate = this._getMinMaxDate(inst, "max");
        extendRemove(inst.settings, settings);
        if (
          minDate !== null &&
          settings["dateFormat"] !== undefined &&
          settings["minDate"] === undefined
        )
          inst.settings.minDate = this._formatDate(inst, minDate);
        if (
          maxDate !== null &&
          settings["dateFormat"] !== undefined &&
          settings["maxDate"] === undefined
        )
          inst.settings.maxDate = this._formatDate(inst, maxDate);
        this._attachments($(target), inst);
        this._autoSize(inst);
        this._setDate(inst, date);
        this._updateAlternate(inst);
        this._updateDatepicker(inst);
      }
    },
    _changeDatepicker: function (target, name, value) {
      this._optionDatepicker(target, name, value);
    },
    _refreshDatepicker: function (target) {
      var inst = this._getInst(target);
      if (inst) {
        this._updateDatepicker(inst);
      }
    },
    _setDateDatepicker: function (target, date) {
      var inst = this._getInst(target);
      if (inst) {
        this._setDate(inst, date);
        this._updateDatepicker(inst);
        this._updateAlternate(inst);
      }
    },
    _getDateDatepicker: function (target, noDefault) {
      var inst = this._getInst(target);
      if (inst && !inst.inline) this._setDateFromField(inst, noDefault);
      return inst ? this._getDate(inst) : null;
    },
    _doKeyDown: function (event) {
      var inst = $.datepicker._getInst(event.target);
      var handled = true;
      var isRTL = inst.dpDiv.is(".ui-datepicker-rtl");
      inst._keyEvent = true;
      if ($.datepicker._datepickerShowing)
        switch (event.keyCode) {
          case 9:
            $.datepicker._hideDatepicker();
            handled = false;
            break;
          case 13:
            var sel = $(
              "td." +
                $.datepicker._dayOverClass +
                ":not(." +
                $.datepicker._currentClass +
                ")",
              inst.dpDiv
            );
            if (sel[0])
              $.datepicker._selectDay(
                event.target,
                inst.selectedMonth,
                inst.selectedYear,
                sel[0]
              );
            var onSelect = $.datepicker._get(inst, "onSelect");
            if (onSelect) {
              var dateStr = $.datepicker._formatDate(inst);
              onSelect.apply(inst.input ? inst.input[0] : null, [
                dateStr,
                inst,
              ]);
            } else $.datepicker._hideDatepicker();
            return false;
            break;
          case 27:
            $.datepicker._hideDatepicker();
            break;
          case 33:
            $.datepicker._adjustDate(
              event.target,
              event.ctrlKey
                ? -$.datepicker._get(inst, "stepBigMonths")
                : -$.datepicker._get(inst, "stepMonths"),
              "M"
            );
            break;
          case 34:
            $.datepicker._adjustDate(
              event.target,
              event.ctrlKey
                ? +$.datepicker._get(inst, "stepBigMonths")
                : +$.datepicker._get(inst, "stepMonths"),
              "M"
            );
            break;
          case 35:
            if (event.ctrlKey || event.metaKey)
              $.datepicker._clearDate(event.target);
            handled = event.ctrlKey || event.metaKey;
            break;
          case 36:
            if (event.ctrlKey || event.metaKey)
              $.datepicker._gotoToday(event.target);
            handled = event.ctrlKey || event.metaKey;
            break;
          case 37:
            if (event.ctrlKey || event.metaKey)
              $.datepicker._adjustDate(event.target, isRTL ? +1 : -1, "D");
            handled = event.ctrlKey || event.metaKey;
            if (event.originalEvent.altKey)
              $.datepicker._adjustDate(
                event.target,
                event.ctrlKey
                  ? -$.datepicker._get(inst, "stepBigMonths")
                  : -$.datepicker._get(inst, "stepMonths"),
                "M"
              );
            break;
          case 38:
            if (event.ctrlKey || event.metaKey)
              $.datepicker._adjustDate(event.target, -7, "D");
            handled = event.ctrlKey || event.metaKey;
            break;
          case 39:
            if (event.ctrlKey || event.metaKey)
              $.datepicker._adjustDate(event.target, isRTL ? -1 : +1, "D");
            handled = event.ctrlKey || event.metaKey;
            if (event.originalEvent.altKey)
              $.datepicker._adjustDate(
                event.target,
                event.ctrlKey
                  ? +$.datepicker._get(inst, "stepBigMonths")
                  : +$.datepicker._get(inst, "stepMonths"),
                "M"
              );
            break;
          case 40:
            if (event.ctrlKey || event.metaKey)
              $.datepicker._adjustDate(event.target, +7, "D");
            handled = event.ctrlKey || event.metaKey;
            break;
          default:
            handled = false;
        }
      else if (event.keyCode == 36 && event.ctrlKey)
        $.datepicker._showDatepicker(this);
      else {
        handled = false;
      }
      if (handled) {
        event.preventDefault();
        event.stopPropagation();
      }
    },
    _doKeyPress: function (event) {
      var inst = $.datepicker._getInst(event.target);
      if ($.datepicker._get(inst, "constrainInput")) {
        var chars = $.datepicker._possibleChars(
          $.datepicker._get(inst, "dateFormat")
        );
        var chr = String.fromCharCode(
          event.charCode == undefined ? event.keyCode : event.charCode
        );
        return (
          event.ctrlKey ||
          event.metaKey ||
          chr < " " ||
          !chars ||
          chars.indexOf(chr) > -1
        );
      }
    },
    _doKeyUp: function (event) {
      var inst = $.datepicker._getInst(event.target);
      if (inst.input.val() != inst.lastVal) {
        try {
          var date = $.datepicker.parseDate(
            $.datepicker._get(inst, "dateFormat"),
            inst.input ? inst.input.val() : null,
            $.datepicker._getFormatConfig(inst)
          );
          if (date) {
            $.datepicker._setDateFromField(inst);
            $.datepicker._updateAlternate(inst);
            $.datepicker._updateDatepicker(inst);
          }
        } catch (event) {
          $.datepicker.log(event);
        }
      }
      return true;
    },
    _showDatepicker: function (input) {
      input = input.target || input;
      if (input.nodeName.toLowerCase() != "input")
        input = $("input", input.parentNode)[0];
      if (
        $.datepicker._isDisabledDatepicker(input) ||
        $.datepicker._lastInput == input
      )
        return;
      var inst = $.datepicker._getInst(input);
      if ($.datepicker._curInst && $.datepicker._curInst != inst) {
        $.datepicker._curInst.dpDiv.stop(true, true);
        if (inst && $.datepicker._datepickerShowing) {
          $.datepicker._hideDatepicker($.datepicker._curInst.input[0]);
        }
      }
      var beforeShow = $.datepicker._get(inst, "beforeShow");
      var beforeShowSettings = beforeShow
        ? beforeShow.apply(input, [input, inst])
        : {};
      if (beforeShowSettings === false) {
        return;
      }
      extendRemove(inst.settings, beforeShowSettings);
      inst.lastVal = null;
      $.datepicker._lastInput = input;
      $.datepicker._setDateFromField(inst);
      if ($.datepicker._inDialog) input.value = "";
      if (!$.datepicker._pos) {
        $.datepicker._pos = $.datepicker._findPos(input);
        $.datepicker._pos[1] += input.offsetHeight;
      }
      var isFixed = false;
      $(input)
        .parents()
        .each(function () {
          isFixed |= $(this).css("position") == "fixed";
          return !isFixed;
        });
      if (isFixed && $.browser.opera) {
        $.datepicker._pos[0] -= document.documentElement.scrollLeft;
        $.datepicker._pos[1] -= document.documentElement.scrollTop;
      }
      var offset = { left: $.datepicker._pos[0], top: $.datepicker._pos[1] };
      $.datepicker._pos = null;
      inst.dpDiv.empty();
      inst.dpDiv.css({
        position: "absolute",
        display: "block",
        top: "-1000px",
      });
      $.datepicker._updateDatepicker(inst);
      offset = $.datepicker._checkOffset(inst, offset, isFixed);
      inst.dpDiv.css({
        position:
          $.datepicker._inDialog && $.blockUI
            ? "static"
            : isFixed
            ? "fixed"
            : "absolute",
        display: "none",
        left: offset.left + "px",
        top: offset.top + "px",
      });
      if (!inst.inline) {
        var showAnim = $.datepicker._get(inst, "showAnim");
        var duration = $.datepicker._get(inst, "duration");
        var postProcess = function () {
          var cover = inst.dpDiv.find("iframe.ui-datepicker-cover");
          if (!!cover.length) {
            var borders = $.datepicker._getBorders(inst.dpDiv);
            cover.css({
              left: -borders[0],
              top: -borders[1],
              width: inst.dpDiv.outerWidth(),
              height: inst.dpDiv.outerHeight(),
            });
          }
        };
        inst.dpDiv.zIndex($(input).zIndex() + 1);
        $.datepicker._datepickerShowing = true;
        if ($.effects && $.effects[showAnim])
          inst.dpDiv.show(
            showAnim,
            $.datepicker._get(inst, "showOptions"),
            duration,
            postProcess
          );
        else
          inst.dpDiv[showAnim || "show"](
            showAnim ? duration : null,
            postProcess
          );
        if (!showAnim || !duration) postProcess();
        if (inst.input.is(":visible") && !inst.input.is(":disabled"))
          inst.input.focus();
        $.datepicker._curInst = inst;
      }
    },
    _updateDatepicker: function (inst) {
      var self = this;
      self.maxRows = 4;
      var borders = $.datepicker._getBorders(inst.dpDiv);
      instActive = inst;
      inst.dpDiv.empty().append(this._generateHTML(inst));
      var cover = inst.dpDiv.find("iframe.ui-datepicker-cover");
      if (!!cover.length) {
        cover.css({
          left: -borders[0],
          top: -borders[1],
          width: inst.dpDiv.outerWidth(),
          height: inst.dpDiv.outerHeight(),
        });
      }
      inst.dpDiv.find("." + this._dayOverClass + " a").mouseover();
      var numMonths = this._getNumberOfMonths(inst);
      var cols = numMonths[1];
      var width = 17;
      inst.dpDiv
        .removeClass(
          "ui-datepicker-multi-2 ui-datepicker-multi-3 ui-datepicker-multi-4"
        )
        .width("");
      if (cols > 1)
        inst.dpDiv
          .addClass("ui-datepicker-multi-" + cols)
          .css("width", width * cols + "em");
      inst.dpDiv[
        (numMonths[0] != 1 || numMonths[1] != 1 ? "add" : "remove") + "Class"
      ]("ui-datepicker-multi");
      inst.dpDiv[(this._get(inst, "isRTL") ? "add" : "remove") + "Class"](
        "ui-datepicker-rtl"
      );
      if (
        inst == $.datepicker._curInst &&
        $.datepicker._datepickerShowing &&
        inst.input &&
        inst.input.is(":visible") &&
        !inst.input.is(":disabled") &&
        inst.input[0] != document.activeElement
      )
        inst.input.focus();
      if (inst.yearshtml) {
        var origyearshtml = inst.yearshtml;
        setTimeout(function () {
          if (origyearshtml === inst.yearshtml && inst.yearshtml) {
            inst.dpDiv
              .find("select.ui-datepicker-year:first")
              .replaceWith(inst.yearshtml);
          }
          origyearshtml = inst.yearshtml = null;
        }, 0);
      }
    },
    _getBorders: function (elem) {
      var convert = function (value) {
        return { thin: 1, medium: 2, thick: 3 }[value] || value;
      };
      return [
        parseFloat(convert(elem.css("border-left-width"))),
        parseFloat(convert(elem.css("border-top-width"))),
      ];
    },
    _checkOffset: function (inst, offset, isFixed) {
      var dpWidth = inst.dpDiv.outerWidth();
      var dpHeight = inst.dpDiv.outerHeight();
      var inputWidth = inst.input ? inst.input.outerWidth() : 0;
      var inputHeight = inst.input ? inst.input.outerHeight() : 0;
      var viewWidth =
        document.documentElement.clientWidth + $(document).scrollLeft();
      var viewHeight =
        document.documentElement.clientHeight + $(document).scrollTop();
      offset.left -= this._get(inst, "isRTL") ? dpWidth - inputWidth : 0;
      offset.left -=
        isFixed && offset.left == inst.input.offset().left
          ? $(document).scrollLeft()
          : 0;
      offset.top -=
        isFixed && offset.top == inst.input.offset().top + inputHeight
          ? $(document).scrollTop()
          : 0;
      offset.left -= Math.min(
        offset.left,
        offset.left + dpWidth > viewWidth && viewWidth > dpWidth
          ? Math.abs(offset.left + dpWidth - viewWidth)
          : 0
      );
      offset.top -= Math.min(
        offset.top,
        offset.top + dpHeight > viewHeight && viewHeight > dpHeight
          ? Math.abs(dpHeight + inputHeight)
          : 0
      );
      return offset;
    },
    _findPos: function (obj) {
      var inst = this._getInst(obj);
      var isRTL = this._get(inst, "isRTL");
      while (
        obj &&
        (obj.type == "hidden" ||
          obj.nodeType != 1 ||
          $.expr.filters.hidden(obj))
      ) {
        obj = obj[isRTL ? "previousSibling" : "nextSibling"];
      }
      var position = $(obj).offset();
      return [position.left, position.top];
    },
    _hideDatepicker: function (input) {
      var inst = this._curInst;
      if (!inst || (input && inst != $.data(input, PROP_NAME))) return;
      if (this._datepickerShowing) {
        var showAnim = this._get(inst, "showAnim");
        var duration = this._get(inst, "duration");
        var self = this;
        var postProcess = function () {
          $.datepicker._tidyDialog(inst);
          self._curInst = null;
        };
        if ($.effects && $.effects[showAnim])
          inst.dpDiv.hide(
            showAnim,
            $.datepicker._get(inst, "showOptions"),
            duration,
            postProcess
          );
        else
          inst.dpDiv[
            showAnim == "slideDown"
              ? "slideUp"
              : showAnim == "fadeIn"
              ? "fadeOut"
              : "hide"
          ](showAnim ? duration : null, postProcess);
        if (!showAnim) postProcess();
        this._datepickerShowing = false;
        var onClose = this._get(inst, "onClose");
        if (onClose)
          onClose.apply(inst.input ? inst.input[0] : null, [
            inst.input ? inst.input.val() : "",
            inst,
          ]);
        this._lastInput = null;
        if (this._inDialog) {
          this._dialogInput.css({
            position: "absolute",
            left: "0",
            top: "-100px",
          });
          if ($.blockUI) {
            $.unblockUI();
            $("body").append(this.dpDiv);
          }
        }
        this._inDialog = false;
      }
    },
    _tidyDialog: function (inst) {
      inst.dpDiv
        .removeClass(this._dialogClass)
        .unbind(".ui-datepicker-calendar");
    },
    _checkExternalClick: function (event) {
      if (!$.datepicker._curInst) return;
      var $target = $(event.target),
        inst = $.datepicker._getInst($target[0]);
      if (
        ($target[0].id != $.datepicker._mainDivId &&
          $target.parents("#" + $.datepicker._mainDivId).length == 0 &&
          !$target.hasClass($.datepicker.markerClassName) &&
          !$target.closest("." + $.datepicker._triggerClass).length &&
          $.datepicker._datepickerShowing &&
          !($.datepicker._inDialog && $.blockUI)) ||
        ($target.hasClass($.datepicker.markerClassName) &&
          $.datepicker._curInst != inst)
      )
        $.datepicker._hideDatepicker();
    },
    _adjustDate: function (id, offset, period) {
      var target = $(id);
      var inst = this._getInst(target[0]);
      if (this._isDisabledDatepicker(target[0])) {
        return;
      }
      this._adjustInstDate(
        inst,
        offset + (period == "M" ? this._get(inst, "showCurrentAtPos") : 0),
        period
      );
      this._updateDatepicker(inst);
    },
    _gotoToday: function (id) {
      var target = $(id);
      var inst = this._getInst(target[0]);
      if (this._get(inst, "gotoCurrent") && inst.currentDay) {
        inst.selectedDay = inst.currentDay;
        inst.drawMonth = inst.selectedMonth = inst.currentMonth;
        inst.drawYear = inst.selectedYear = inst.currentYear;
      } else {
        var date = new Date();
        inst.selectedDay = date.getDate();
        inst.drawMonth = inst.selectedMonth = date.getMonth();
        inst.drawYear = inst.selectedYear = date.getFullYear();
      }
      this._notifyChange(inst);
      this._adjustDate(target);
    },
    _selectMonthYear: function (id, select, period) {
      var target = $(id);
      var inst = this._getInst(target[0]);
      inst["selected" + (period == "M" ? "Month" : "Year")] = inst[
        "draw" + (period == "M" ? "Month" : "Year")
      ] = parseInt(select.options[select.selectedIndex].value, 10);
      this._notifyChange(inst);
      this._adjustDate(target);
    },
    _selectDay: function (id, month, year, td) {
      var target = $(id);
      if (
        $(td).hasClass(this._unselectableClass) ||
        this._isDisabledDatepicker(target[0])
      ) {
        return;
      }
      var inst = this._getInst(target[0]);
      inst.selectedDay = inst.currentDay = $("a", td).html();
      inst.selectedMonth = inst.currentMonth = month;
      inst.selectedYear = inst.currentYear = year;
      this._selectDate(
        id,
        this._formatDate(
          inst,
          inst.currentDay,
          inst.currentMonth,
          inst.currentYear
        )
      );
    },
    _clearDate: function (id) {
      var target = $(id);
      var inst = this._getInst(target[0]);
      this._selectDate(target, "");
    },
    _selectDate: function (id, dateStr) {
      var target = $(id);
      var inst = this._getInst(target[0]);
      dateStr = dateStr != null ? dateStr : this._formatDate(inst);
      if (inst.input) inst.input.val(dateStr);
      this._updateAlternate(inst);
      var onSelect = this._get(inst, "onSelect");
      if (onSelect)
        onSelect.apply(inst.input ? inst.input[0] : null, [dateStr, inst]);
      else if (inst.input) inst.input.trigger("change");
      if (inst.inline) this._updateDatepicker(inst);
      else {
        this._hideDatepicker();
        this._lastInput = inst.input[0];
        if (typeof inst.input[0] != "object") inst.input.focus();
        this._lastInput = null;
      }
    },
    _updateAlternate: function (inst) {
      var altField = this._get(inst, "altField");
      if (altField) {
        var altFormat =
          this._get(inst, "altFormat") || this._get(inst, "dateFormat");
        var date = this._getDate(inst);
        var dateStr = this.formatDate(
          altFormat,
          date,
          this._getFormatConfig(inst)
        );
        $(altField).each(function () {
          $(this).val(dateStr);
        });
      }
    },
    noWeekends: function (date) {
      var day = date.getDay();
      return [day > 0 && day < 6, ""];
    },
    iso8601Week: function (date) {
      var checkDate = new Date(date.getTime());
      checkDate.setDate(checkDate.getDate() + 4 - (checkDate.getDay() || 7));
      var time = checkDate.getTime();
      checkDate.setMonth(0);
      checkDate.setDate(1);
      return Math.floor(Math.round((time - checkDate) / 86400000) / 7) + 1;
    },
    parseDate: function (format, value, settings) {
      if (format == null || value == null) throw "Invalid arguments";
      value = typeof value == "object" ? value.toString() : value + "";
      if (value == "") return null;
      var shortYearCutoff =
        (settings ? settings.shortYearCutoff : null) ||
        this._defaults.shortYearCutoff;
      shortYearCutoff =
        typeof shortYearCutoff != "string"
          ? shortYearCutoff
          : (new Date().getFullYear() % 100) + parseInt(shortYearCutoff, 10);
      var dayNamesShort =
        (settings ? settings.dayNamesShort : null) ||
        this._defaults.dayNamesShort;
      var dayNames =
        (settings ? settings.dayNames : null) || this._defaults.dayNames;
      var monthNamesShort =
        (settings ? settings.monthNamesShort : null) ||
        this._defaults.monthNamesShort;
      var monthNames =
        (settings ? settings.monthNames : null) || this._defaults.monthNames;
      var year = -1;
      var month = -1;
      var day = -1;
      var doy = -1;
      var literal = false;
      var lookAhead = function (match) {
        var matches =
          iFormat + 1 < format.length && format.charAt(iFormat + 1) == match;
        if (matches) iFormat++;
        return matches;
      };
      var getNumber = function (match) {
        var isDoubled = lookAhead(match);
        var size =
          match == "@"
            ? 14
            : match == "!"
            ? 20
            : match == "y" && isDoubled
            ? 4
            : match == "o"
            ? 3
            : 2;
        var digits = new RegExp("^\\d{1," + size + "}");
        var num = value.substring(iValue).match(digits);
        if (!num) throw "Missing number at position " + iValue;
        iValue += num[0].length;
        return parseInt(num[0], 10);
      };
      var getName = function (match, shortNames, longNames) {
        var names = $.map(
          lookAhead(match) ? longNames : shortNames,
          function (v, k) {
            return [[k, v]];
          }
        ).sort(function (a, b) {
          return -(a[1].length - b[1].length);
        });
        var index = -1;
        $.each(names, function (i, pair) {
          var name = pair[1];
          if (
            value.substr(iValue, name.length).toLowerCase() ==
            name.toLowerCase()
          ) {
            index = pair[0];
            iValue += name.length;
            return false;
          }
        });
        if (index != -1) return index + 1;
        else throw "Unknown name at position " + iValue;
      };
      var checkLiteral = function () {
        if (value.charAt(iValue) != format.charAt(iFormat))
          throw "Unexpected literal at position " + iValue;
        iValue++;
      };
      var iValue = 0;
      for (var iFormat = 0; iFormat < format.length; iFormat++) {
        if (literal)
          if (format.charAt(iFormat) == "'" && !lookAhead("'")) literal = false;
          else checkLiteral();
        else
          switch (format.charAt(iFormat)) {
            case "d":
              day = getNumber("d");
              break;
            case "D":
              getName("D", dayNamesShort, dayNames);
              break;
            case "o":
              doy = getNumber("o");
              break;
            case "m":
              month = getNumber("m");
              break;
            case "M":
              month = getName("M", monthNamesShort, monthNames);
              break;
            case "y":
              year = getNumber("y");
              break;
            case "@":
              var date = new Date(getNumber("@"));
              year = date.getFullYear();
              month = date.getMonth() + 1;
              day = date.getDate();
              break;
            case "!":
              var date = new Date((getNumber("!") - this._ticksTo1970) / 10000);
              year = date.getFullYear();
              month = date.getMonth() + 1;
              day = date.getDate();
              break;
            case "'":
              if (lookAhead("'")) checkLiteral();
              else literal = true;
              break;
            default:
              checkLiteral();
          }
      }
      if (iValue < value.length) {
        throw (
          "Extra/unparsed characters found in date: " + value.substring(iValue)
        );
      }
      if (year == -1) year = new Date().getFullYear();
      else if (year < 100)
        year +=
          new Date().getFullYear() -
          (new Date().getFullYear() % 100) +
          (year <= shortYearCutoff ? 0 : -100);
      if (doy > -1) {
        month = 1;
        day = doy;
        do {
          var dim = this._getDaysInMonth(year, month - 1);
          if (day <= dim) break;
          month++;
          day -= dim;
        } while (true);
      }
      var date = this._daylightSavingAdjust(new Date(year, month - 1, day));
      if (
        date.getFullYear() != year ||
        date.getMonth() + 1 != month ||
        date.getDate() != day
      )
        throw "Invalid date";
      return date;
    },
    ATOM: "yy-mm-dd",
    COOKIE: "D, dd M yy",
    ISO_8601: "yy-mm-dd",
    RFC_822: "D, d M y",
    RFC_850: "DD, dd-M-y",
    RFC_1036: "D, d M y",
    RFC_1123: "D, d M yy",
    RFC_2822: "D, d M yy",
    RSS: "D, d M y",
    TICKS: "!",
    TIMESTAMP: "@",
    W3C: "yy-mm-dd",
    _ticksTo1970:
      ((1970 - 1) * 365 +
        Math.floor(1970 / 4) -
        Math.floor(1970 / 100) +
        Math.floor(1970 / 400)) *
      24 *
      60 *
      60 *
      10000000,
    formatDate: function (format, date, settings) {
      if (!date) return "";
      var dayNamesShort =
        (settings ? settings.dayNamesShort : null) ||
        this._defaults.dayNamesShort;
      var dayNames =
        (settings ? settings.dayNames : null) || this._defaults.dayNames;
      var monthNamesShort =
        (settings ? settings.monthNamesShort : null) ||
        this._defaults.monthNamesShort;
      var monthNames =
        (settings ? settings.monthNames : null) || this._defaults.monthNames;
      var lookAhead = function (match) {
        var matches =
          iFormat + 1 < format.length && format.charAt(iFormat + 1) == match;
        if (matches) iFormat++;
        return matches;
      };
      var formatNumber = function (match, value, len) {
        var num = "" + value;
        if (lookAhead(match)) while (num.length < len) num = "0" + num;
        return num;
      };
      var formatName = function (match, value, shortNames, longNames) {
        return lookAhead(match) ? longNames[value] : shortNames[value];
      };
      var output = "";
      var literal = false;
      if (date)
        for (var iFormat = 0; iFormat < format.length; iFormat++) {
          if (literal)
            if (format.charAt(iFormat) == "'" && !lookAhead("'"))
              literal = false;
            else output += format.charAt(iFormat);
          else
            switch (format.charAt(iFormat)) {
              case "d":
                output += formatNumber("d", date.getDate(), 2);
                break;
              case "D":
                output += formatName(
                  "D",
                  date.getDay(),
                  dayNamesShort,
                  dayNames
                );
                break;
              case "o":
                output += formatNumber(
                  "o",
                  Math.round(
                    (new Date(
                      date.getFullYear(),
                      date.getMonth(),
                      date.getDate()
                    ).getTime() -
                      new Date(date.getFullYear(), 0, 0).getTime()) /
                      86400000
                  ),
                  3
                );
                break;
              case "m":
                output += formatNumber("m", date.getMonth() + 1, 2);
                break;
              case "M":
                output += formatName(
                  "M",
                  date.getMonth(),
                  monthNamesShort,
                  monthNames
                );
                break;
              case "y":
                output += lookAhead("y")
                  ? date.getFullYear()
                  : (date.getYear() % 100 < 10 ? "0" : "") +
                    (date.getYear() % 100);
                break;
              case "@":
                output += date.getTime();
                break;
              case "!":
                output += date.getTime() * 10000 + this._ticksTo1970;
                break;
              case "'":
                if (lookAhead("'")) output += "'";
                else literal = true;
                break;
              default:
                output += format.charAt(iFormat);
            }
        }
      return output;
    },
    _possibleChars: function (format) {
      var chars = "";
      var literal = false;
      var lookAhead = function (match) {
        var matches =
          iFormat + 1 < format.length && format.charAt(iFormat + 1) == match;
        if (matches) iFormat++;
        return matches;
      };
      for (var iFormat = 0; iFormat < format.length; iFormat++)
        if (literal)
          if (format.charAt(iFormat) == "'" && !lookAhead("'")) literal = false;
          else chars += format.charAt(iFormat);
        else
          switch (format.charAt(iFormat)) {
            case "d":
            case "m":
            case "y":
            case "@":
              chars += "0123456789";
              break;
            case "D":
            case "M":
              return null;
            case "'":
              if (lookAhead("'")) chars += "'";
              else literal = true;
              break;
            default:
              chars += format.charAt(iFormat);
          }
      return chars;
    },
    _get: function (inst, name) {
      return inst.settings[name] !== undefined
        ? inst.settings[name]
        : this._defaults[name];
    },
    _setDateFromField: function (inst, noDefault) {
      if (inst.input.val() == inst.lastVal) {
        return;
      }
      var dateFormat = this._get(inst, "dateFormat");
      var dates = (inst.lastVal = inst.input ? inst.input.val() : null);
      var date, defaultDate;
      date = defaultDate = this._getDefaultDate(inst);
      var settings = this._getFormatConfig(inst);
      try {
        date = this.parseDate(dateFormat, dates, settings) || defaultDate;
      } catch (event) {
        this.log(event);
        dates = noDefault ? "" : dates;
      }
      inst.selectedDay = date.getDate();
      inst.drawMonth = inst.selectedMonth = date.getMonth();
      inst.drawYear = inst.selectedYear = date.getFullYear();
      inst.currentDay = dates ? date.getDate() : 0;
      inst.currentMonth = dates ? date.getMonth() : 0;
      inst.currentYear = dates ? date.getFullYear() : 0;
      this._adjustInstDate(inst);
    },
    _getDefaultDate: function (inst) {
      return this._restrictMinMax(
        inst,
        this._determineDate(inst, this._get(inst, "defaultDate"), new Date())
      );
    },
    _determineDate: function (inst, date, defaultDate) {
      var offsetNumeric = function (offset) {
        var date = new Date();
        date.setDate(date.getDate() + offset);
        return date;
      };
      var offsetString = function (offset) {
        try {
          return $.datepicker.parseDate(
            $.datepicker._get(inst, "dateFormat"),
            offset,
            $.datepicker._getFormatConfig(inst)
          );
        } catch (e) {}
        var date =
          (offset.toLowerCase().match(/^c/)
            ? $.datepicker._getDate(inst)
            : null) || new Date();
        var year = date.getFullYear();
        var month = date.getMonth();
        var day = date.getDate();
        var pattern = /([+-]?[0-9]+)\s*(d|D|w|W|m|M|y|Y)?/g;
        var matches = pattern.exec(offset);
        while (matches) {
          switch (matches[2] || "d") {
            case "d":
            case "D":
              day += parseInt(matches[1], 10);
              break;
            case "w":
            case "W":
              day += parseInt(matches[1], 10) * 7;
              break;
            case "m":
            case "M":
              month += parseInt(matches[1], 10);
              day = Math.min(day, $.datepicker._getDaysInMonth(year, month));
              break;
            case "y":
            case "Y":
              year += parseInt(matches[1], 10);
              day = Math.min(day, $.datepicker._getDaysInMonth(year, month));
              break;
          }
          matches = pattern.exec(offset);
        }
        return new Date(year, month, day);
      };
      var newDate =
        date == null || date === ""
          ? defaultDate
          : typeof date == "string"
          ? offsetString(date)
          : typeof date == "number"
          ? isNaN(date)
            ? defaultDate
            : offsetNumeric(date)
          : new Date(date.getTime());
      newDate =
        newDate && newDate.toString() == "Invalid Date" ? defaultDate : newDate;
      if (newDate) {
        newDate.setHours(0);
        newDate.setMinutes(0);
        newDate.setSeconds(0);
        newDate.setMilliseconds(0);
      }
      return this._daylightSavingAdjust(newDate);
    },
    _daylightSavingAdjust: function (date) {
      if (!date) return null;
      date.setHours(date.getHours() > 12 ? date.getHours() + 2 : 0);
      return date;
    },
    _setDate: function (inst, date, noChange) {
      var clear = !date;
      var origMonth = inst.selectedMonth;
      var origYear = inst.selectedYear;
      var newDate = this._restrictMinMax(
        inst,
        this._determineDate(inst, date, new Date())
      );
      inst.selectedDay = inst.currentDay = newDate.getDate();
      inst.drawMonth = inst.selectedMonth = inst.currentMonth = newDate.getMonth();
      inst.drawYear = inst.selectedYear = inst.currentYear = newDate.getFullYear();
      if (
        (origMonth != inst.selectedMonth || origYear != inst.selectedYear) &&
        !noChange
      )
        this._notifyChange(inst);
      this._adjustInstDate(inst);
      if (inst.input) {
        inst.input.val(clear ? "" : this._formatDate(inst));
      }
    },
    _getDate: function (inst) {
      var startDate =
        !inst.currentYear || (inst.input && inst.input.val() == "")
          ? null
          : this._daylightSavingAdjust(
              new Date(inst.currentYear, inst.currentMonth, inst.currentDay)
            );
      return startDate;
    },
    _generateHTML: function (inst) {
      var today = new Date();
      today = this._daylightSavingAdjust(
        new Date(today.getFullYear(), today.getMonth(), today.getDate())
      );
      var isRTL = this._get(inst, "isRTL");
      var showButtonPanel = this._get(inst, "showButtonPanel");
      var hideIfNoPrevNext = this._get(inst, "hideIfNoPrevNext");
      var navigationAsDateFormat = this._get(inst, "navigationAsDateFormat");
      var numMonths = this._getNumberOfMonths(inst);
      var showCurrentAtPos = this._get(inst, "showCurrentAtPos");
      var stepMonths = this._get(inst, "stepMonths");
      var isMultiMonth = numMonths[0] != 1 || numMonths[1] != 1;
      var currentDate = this._daylightSavingAdjust(
        !inst.currentDay
          ? new Date(9999, 9, 9)
          : new Date(inst.currentYear, inst.currentMonth, inst.currentDay)
      );
      var minDate = this._getMinMaxDate(inst, "min");
      var maxDate = this._getMinMaxDate(inst, "max");
      var drawMonth = inst.drawMonth - showCurrentAtPos;
      var drawYear = inst.drawYear;
      if (drawMonth < 0) {
        drawMonth += 12;
        drawYear--;
      }
      if (maxDate) {
        var maxDraw = this._daylightSavingAdjust(
          new Date(
            maxDate.getFullYear(),
            maxDate.getMonth() - numMonths[0] * numMonths[1] + 1,
            maxDate.getDate()
          )
        );
        maxDraw = minDate && maxDraw < minDate ? minDate : maxDraw;
        while (
          this._daylightSavingAdjust(new Date(drawYear, drawMonth, 1)) > maxDraw
        ) {
          drawMonth--;
          if (drawMonth < 0) {
            drawMonth = 11;
            drawYear--;
          }
        }
      }
      inst.drawMonth = drawMonth;
      inst.drawYear = drawYear;
      var prevText = this._get(inst, "prevText");
      prevText = !navigationAsDateFormat
        ? prevText
        : this.formatDate(
            prevText,
            this._daylightSavingAdjust(
              new Date(drawYear, drawMonth - stepMonths, 1)
            ),
            this._getFormatConfig(inst)
          );
      var prev = this._canAdjustMonth(inst, -1, drawYear, drawMonth)
        ? '<a class="ui-datepicker-prev ui-corner-all" onclick="DP_jQuery_' +
          dpuuid +
          ".datepicker._adjustDate('#" +
          inst.id +
          "', -" +
          stepMonths +
          ", 'M');\"" +
          ' title="' +
          prevText +
          '"><span class="ui-icon ui-icon-circle-triangle-' +
          (isRTL ? "e" : "w") +
          '">' +
          prevText +
          "</span></a>"
        : hideIfNoPrevNext
        ? ""
        : '<a class="ui-datepicker-prev ui-corner-all ui-state-disabled" title="' +
          prevText +
          '"><span class="ui-icon ui-icon-circle-triangle-' +
          (isRTL ? "e" : "w") +
          '">' +
          prevText +
          "</span></a>";
      var nextText = this._get(inst, "nextText");
      nextText = !navigationAsDateFormat
        ? nextText
        : this.formatDate(
            nextText,
            this._daylightSavingAdjust(
              new Date(drawYear, drawMonth + stepMonths, 1)
            ),
            this._getFormatConfig(inst)
          );
      var next = this._canAdjustMonth(inst, +1, drawYear, drawMonth)
        ? '<a class="ui-datepicker-next ui-corner-all" onclick="DP_jQuery_' +
          dpuuid +
          ".datepicker._adjustDate('#" +
          inst.id +
          "', +" +
          stepMonths +
          ", 'M');\"" +
          ' title="' +
          nextText +
          '"><span class="ui-icon ui-icon-circle-triangle-' +
          (isRTL ? "w" : "e") +
          '">' +
          nextText +
          "</span></a>"
        : hideIfNoPrevNext
        ? ""
        : '<a class="ui-datepicker-next ui-corner-all ui-state-disabled" title="' +
          nextText +
          '"><span class="ui-icon ui-icon-circle-triangle-' +
          (isRTL ? "w" : "e") +
          '">' +
          nextText +
          "</span></a>";
      var currentText = this._get(inst, "currentText");
      var gotoDate =
        this._get(inst, "gotoCurrent") && inst.currentDay ? currentDate : today;
      currentText = !navigationAsDateFormat
        ? currentText
        : this.formatDate(currentText, gotoDate, this._getFormatConfig(inst));
      var controls = !inst.inline
        ? '<button type="button" class="ui-datepicker-close ui-state-default ui-priority-primary ui-corner-all" onclick="DP_jQuery_' +
          dpuuid +
          '.datepicker._hideDatepicker();">' +
          this._get(inst, "closeText") +
          "</button>"
        : "";
      var buttonPanel = showButtonPanel
        ? '<div class="ui-datepicker-buttonpane ui-widget-content">' +
          (isRTL ? controls : "") +
          (this._isInRange(inst, gotoDate)
            ? '<button type="button" class="ui-datepicker-current ui-state-default ui-priority-secondary ui-corner-all" onclick="DP_jQuery_' +
              dpuuid +
              ".datepicker._gotoToday('#" +
              inst.id +
              "');\"" +
              ">" +
              currentText +
              "</button>"
            : "") +
          (isRTL ? "" : controls) +
          "</div>"
        : "";
      var firstDay = parseInt(this._get(inst, "firstDay"), 10);
      firstDay = isNaN(firstDay) ? 0 : firstDay;
      var showWeek = this._get(inst, "showWeek");
      var dayNames = this._get(inst, "dayNames");
      var dayNamesShort = this._get(inst, "dayNamesShort");
      var dayNamesMin = this._get(inst, "dayNamesMin");
      var monthNames = this._get(inst, "monthNames");
      var monthNamesShort = this._get(inst, "monthNamesShort");
      var beforeShowDay = this._get(inst, "beforeShowDay");
      var showOtherMonths = this._get(inst, "showOtherMonths");
      var selectOtherMonths = this._get(inst, "selectOtherMonths");
      var calculateWeek = this._get(inst, "calculateWeek") || this.iso8601Week;
      var defaultDate = this._getDefaultDate(inst);
      var html = "";
      for (var row = 0; row < numMonths[0]; row++) {
        var group = "";
        this.maxRows = 4;
        for (var col = 0; col < numMonths[1]; col++) {
          var selectedDate = this._daylightSavingAdjust(
            new Date(drawYear, drawMonth, inst.selectedDay)
          );
          var cornerClass = " ui-corner-all";
          var calender = "";
          if (isMultiMonth) {
            calender += '<div class="ui-datepicker-group';
            if (numMonths[1] > 1)
              switch (col) {
                case 0:
                  calender += " ui-datepicker-group-first";
                  cornerClass = " ui-corner-" + (isRTL ? "right" : "left");
                  break;
                case numMonths[1] - 1:
                  calender += " ui-datepicker-group-last";
                  cornerClass = " ui-corner-" + (isRTL ? "left" : "right");
                  break;
                default:
                  calender += " ui-datepicker-group-middle";
                  cornerClass = "";
                  break;
              }
            calender += '">';
          }
          calender +=
            '<div class="ui-datepicker-header ui-widget-header ui-helper-clearfix' +
            cornerClass +
            '">' +
            (/all|left/.test(cornerClass) && row == 0
              ? isRTL
                ? next
                : prev
              : "") +
            (/all|right/.test(cornerClass) && row == 0
              ? isRTL
                ? prev
                : next
              : "") +
            this._generateMonthYearHeader(
              inst,
              drawMonth,
              drawYear,
              minDate,
              maxDate,
              row > 0 || col > 0,
              monthNames,
              monthNamesShort
            ) +
            '</div><table class="ui-datepicker-calendar"><thead>' +
            "<tr>";
          var thead = showWeek
            ? '<th class="ui-datepicker-week-col">' +
              this._get(inst, "weekHeader") +
              "</th>"
            : "";
          for (var dow = 0; dow < 7; dow++) {
            var day = (dow + firstDay) % 7;
            thead +=
              "<th" +
              ((dow + firstDay + 6) % 7 >= 5
                ? ' class="ui-datepicker-week-end"'
                : "") +
              ">" +
              '<span title="' +
              dayNames[day] +
              '">' +
              dayNamesMin[day] +
              "</span></th>";
          }
          calender += thead + "</tr></thead><tbody>";
          var daysInMonth = this._getDaysInMonth(drawYear, drawMonth);
          if (drawYear == inst.selectedYear && drawMonth == inst.selectedMonth)
            inst.selectedDay = Math.min(inst.selectedDay, daysInMonth);
          var leadDays =
            (this._getFirstDayOfMonth(drawYear, drawMonth) - firstDay + 7) % 7;
          var curRows = Math.ceil((leadDays + daysInMonth) / 7);
          var numRows = isMultiMonth
            ? this.maxRows > curRows
              ? this.maxRows
              : curRows
            : curRows;
          this.maxRows = numRows;
          var printDate = this._daylightSavingAdjust(
            new Date(drawYear, drawMonth, 1 - leadDays)
          );
          for (var dRow = 0; dRow < numRows; dRow++) {
            calender += "<tr>";
            var tbody = !showWeek
              ? ""
              : '<td class="ui-datepicker-week-col">' +
                this._get(inst, "calculateWeek")(printDate) +
                "</td>";
            for (var dow = 0; dow < 7; dow++) {
              var daySettings = beforeShowDay
                ? beforeShowDay.apply(inst.input ? inst.input[0] : null, [
                    printDate,
                  ])
                : [true, ""];
              var otherMonth = printDate.getMonth() != drawMonth;
              var unselectable =
                (otherMonth && !selectOtherMonths) ||
                !daySettings[0] ||
                (minDate && printDate < minDate) ||
                (maxDate && printDate > maxDate);
              tbody +=
                '<td class="' +
                ((dow + firstDay + 6) % 7 >= 5
                  ? " ui-datepicker-week-end"
                  : "") +
                (otherMonth ? " ui-datepicker-other-month" : "") +
                ((printDate.getTime() == selectedDate.getTime() &&
                  drawMonth == inst.selectedMonth &&
                  inst._keyEvent) ||
                (defaultDate.getTime() == printDate.getTime() &&
                  defaultDate.getTime() == selectedDate.getTime())
                  ? " " + this._dayOverClass
                  : "") +
                (unselectable
                  ? " " + this._unselectableClass + " ui-state-disabled"
                  : "") +
                (otherMonth && !showOtherMonths
                  ? ""
                  : " " +
                    daySettings[1] +
                    (printDate.getTime() == currentDate.getTime()
                      ? " " + this._currentClass
                      : "") +
                    (printDate.getTime() == today.getTime()
                      ? " ui-datepicker-today"
                      : "")) +
                '"' +
                ((!otherMonth || showOtherMonths) && daySettings[2]
                  ? ' title="' + daySettings[2] + '"'
                  : "") +
                (unselectable
                  ? ""
                  : ' onclick="DP_jQuery_' +
                    dpuuid +
                    ".datepicker._selectDay('#" +
                    inst.id +
                    "'," +
                    printDate.getMonth() +
                    "," +
                    printDate.getFullYear() +
                    ', this);return false;"') +
                ">" +
                (otherMonth && !showOtherMonths
                  ? "&#xa0;"
                  : unselectable
                  ? '<span class="ui-state-default">' +
                    printDate.getDate() +
                    "</span>"
                  : '<a class="ui-state-default' +
                    (printDate.getTime() == today.getTime()
                      ? " ui-state-highlight"
                      : "") +
                    (printDate.getTime() == currentDate.getTime()
                      ? " ui-state-active"
                      : "") +
                    (otherMonth ? " ui-priority-secondary" : "") +
                    '" href="#">' +
                    printDate.getDate() +
                    "</a>") +
                "</td>";
              printDate.setDate(printDate.getDate() + 1);
              printDate = this._daylightSavingAdjust(printDate);
            }
            calender += tbody + "</tr>";
          }
          drawMonth++;
          if (drawMonth > 11) {
            drawMonth = 0;
            drawYear++;
          }
          calender +=
            "</tbody></table>" +
            (isMultiMonth
              ? "</div>" +
                (numMonths[0] > 0 && col == numMonths[1] - 1
                  ? '<div class="ui-datepicker-row-break"></div>'
                  : "")
              : "");
          group += calender;
        }
        html += group;
      }
      html +=
        buttonPanel +
        ($.browser.msie && parseInt($.browser.version, 10) < 7 && !inst.inline
          ? '<iframe src="javascript:false;" class="ui-datepicker-cover" frameborder="0"></iframe>'
          : "");
      inst._keyEvent = false;
      return html;
    },
    _generateMonthYearHeader: function (
      inst,
      drawMonth,
      drawYear,
      minDate,
      maxDate,
      secondary,
      monthNames,
      monthNamesShort
    ) {
      var changeMonth = this._get(inst, "changeMonth");
      var changeYear = this._get(inst, "changeYear");
      var showMonthAfterYear = this._get(inst, "showMonthAfterYear");
      var html = '<div class="ui-datepicker-title">';
      var monthHtml = "";
      if (secondary || !changeMonth)
        monthHtml +=
          '<span class="ui-datepicker-month">' +
          monthNames[drawMonth] +
          "</span>";
      else {
        var inMinYear = minDate && minDate.getFullYear() == drawYear;
        var inMaxYear = maxDate && maxDate.getFullYear() == drawYear;
        monthHtml +=
          '<select class="ui-datepicker-month" ' +
          'onchange="DP_jQuery_' +
          dpuuid +
          ".datepicker._selectMonthYear('#" +
          inst.id +
          "', this, 'M');\" " +
          ">";
        for (var month = 0; month < 12; month++) {
          if (
            (!inMinYear || month >= minDate.getMonth()) &&
            (!inMaxYear || month <= maxDate.getMonth())
          )
            monthHtml +=
              '<option value="' +
              month +
              '"' +
              (month == drawMonth ? ' selected="selected"' : "") +
              ">" +
              monthNamesShort[month] +
              "</option>";
        }
        monthHtml += "</select>";
      }
      if (!showMonthAfterYear)
        html +=
          monthHtml +
          (secondary || !(changeMonth && changeYear) ? "&#xa0;" : "");
      if (!inst.yearshtml) {
        inst.yearshtml = "";
        if (secondary || !changeYear)
          html += '<span class="ui-datepicker-year">' + drawYear + "</span>";
        else {
          var years = this._get(inst, "yearRange").split(":");
          var thisYear = new Date().getFullYear();
          var determineYear = function (value) {
            var year = value.match(/c[+-].*/)
              ? drawYear + parseInt(value.substring(1), 10)
              : value.match(/[+-].*/)
              ? thisYear + parseInt(value, 10)
              : parseInt(value, 10);
            return isNaN(year) ? thisYear : year;
          };
          var year = determineYear(years[0]);
          var endYear = Math.max(year, determineYear(years[1] || ""));
          year = minDate ? Math.max(year, minDate.getFullYear()) : year;
          endYear = maxDate
            ? Math.min(endYear, maxDate.getFullYear())
            : endYear;
          inst.yearshtml +=
            '<select class="ui-datepicker-year" ' +
            'onchange="DP_jQuery_' +
            dpuuid +
            ".datepicker._selectMonthYear('#" +
            inst.id +
            "', this, 'Y');\" " +
            ">";
          for (; year <= endYear; year++) {
            inst.yearshtml +=
              '<option value="' +
              year +
              '"' +
              (year == drawYear ? ' selected="selected"' : "") +
              ">" +
              year +
              "</option>";
          }
          inst.yearshtml += "</select>";
          html += inst.yearshtml;
          inst.yearshtml = null;
        }
      }
      html += this._get(inst, "yearSuffix");
      if (showMonthAfterYear)
        html +=
          (secondary || !(changeMonth && changeYear) ? "&#xa0;" : "") +
          monthHtml;
      html += "</div>";
      return html;
    },
    _adjustInstDate: function (inst, offset, period) {
      var year = inst.drawYear + (period == "Y" ? offset : 0);
      var month = inst.drawMonth + (period == "M" ? offset : 0);
      var day =
        Math.min(inst.selectedDay, this._getDaysInMonth(year, month)) +
        (period == "D" ? offset : 0);
      var date = this._restrictMinMax(
        inst,
        this._daylightSavingAdjust(new Date(year, month, day))
      );
      inst.selectedDay = date.getDate();
      inst.drawMonth = inst.selectedMonth = date.getMonth();
      inst.drawYear = inst.selectedYear = date.getFullYear();
      if (period == "M" || period == "Y") this._notifyChange(inst);
    },
    _restrictMinMax: function (inst, date) {
      var minDate = this._getMinMaxDate(inst, "min");
      var maxDate = this._getMinMaxDate(inst, "max");
      var newDate = minDate && date < minDate ? minDate : date;
      newDate = maxDate && newDate > maxDate ? maxDate : newDate;
      return newDate;
    },
    _notifyChange: function (inst) {
      var onChange = this._get(inst, "onChangeMonthYear");
      if (onChange)
        onChange.apply(inst.input ? inst.input[0] : null, [
          inst.selectedYear,
          inst.selectedMonth + 1,
          inst,
        ]);
    },
    _getNumberOfMonths: function (inst) {
      var numMonths = this._get(inst, "numberOfMonths");
      return numMonths == null
        ? [1, 1]
        : typeof numMonths == "number"
        ? [1, numMonths]
        : numMonths;
    },
    _getMinMaxDate: function (inst, minMax) {
      return this._determineDate(inst, this._get(inst, minMax + "Date"), null);
    },
    _getDaysInMonth: function (year, month) {
      return (
        32 - this._daylightSavingAdjust(new Date(year, month, 32)).getDate()
      );
    },
    _getFirstDayOfMonth: function (year, month) {
      return new Date(year, month, 1).getDay();
    },
    _canAdjustMonth: function (inst, offset, curYear, curMonth) {
      var numMonths = this._getNumberOfMonths(inst);
      var date = this._daylightSavingAdjust(
        new Date(
          curYear,
          curMonth + (offset < 0 ? offset : numMonths[0] * numMonths[1]),
          1
        )
      );
      if (offset < 0)
        date.setDate(this._getDaysInMonth(date.getFullYear(), date.getMonth()));
      return this._isInRange(inst, date);
    },
    _isInRange: function (inst, date) {
      var minDate = this._getMinMaxDate(inst, "min");
      var maxDate = this._getMinMaxDate(inst, "max");
      return (
        (!minDate || date.getTime() >= minDate.getTime()) &&
        (!maxDate || date.getTime() <= maxDate.getTime())
      );
    },
    _getFormatConfig: function (inst) {
      var shortYearCutoff = this._get(inst, "shortYearCutoff");
      shortYearCutoff =
        typeof shortYearCutoff != "string"
          ? shortYearCutoff
          : (new Date().getFullYear() % 100) + parseInt(shortYearCutoff, 10);
      return {
        shortYearCutoff: shortYearCutoff,
        dayNamesShort: this._get(inst, "dayNamesShort"),
        dayNames: this._get(inst, "dayNames"),
        monthNamesShort: this._get(inst, "monthNamesShort"),
        monthNames: this._get(inst, "monthNames"),
      };
    },
    _formatDate: function (inst, day, month, year) {
      if (!day) {
        inst.currentDay = inst.selectedDay;
        inst.currentMonth = inst.selectedMonth;
        inst.currentYear = inst.selectedYear;
      }
      var date = day
        ? typeof day == "object"
          ? day
          : this._daylightSavingAdjust(new Date(year, month, day))
        : this._daylightSavingAdjust(
            new Date(inst.currentYear, inst.currentMonth, inst.currentDay)
          );
      return this.formatDate(
        this._get(inst, "dateFormat"),
        date,
        this._getFormatConfig(inst)
      );
    },
  });
  function bindHover(dpDiv) {
    var selector =
      "button, .ui-datepicker-prev, .ui-datepicker-next, .ui-datepicker-calendar td a";
    return dpDiv
      .bind("mouseout", function (event) {
        var elem = $(event.target).closest(selector);
        if (!elem.length) {
          return;
        }
        elem.removeClass(
          "ui-state-hover ui-datepicker-prev-hover ui-datepicker-next-hover"
        );
      })
      .bind("mouseover", function (event) {
        var elem = $(event.target).closest(selector);
        if (
          $.datepicker._isDisabledDatepicker(
            instActive.inline ? dpDiv.parent()[0] : instActive.input[0]
          ) ||
          !elem.length
        ) {
          return;
        }
        elem
          .parents(".ui-datepicker-calendar")
          .find("a")
          .removeClass("ui-state-hover");
        elem.addClass("ui-state-hover");
        if (elem.hasClass("ui-datepicker-prev"))
          elem.addClass("ui-datepicker-prev-hover");
        if (elem.hasClass("ui-datepicker-next"))
          elem.addClass("ui-datepicker-next-hover");
      });
  }
  function extendRemove(target, props) {
    $.extend(target, props);
    for (var name in props)
      if (props[name] == null || props[name] == undefined)
        target[name] = props[name];
    return target;
  }
  function isArray(a) {
    return (
      a &&
      (($.browser.safari && typeof a == "object" && a.length) ||
        (a.constructor && a.constructor.toString().match(/\Array\(\)/)))
    );
  }
  $.fn.datepicker = function (options) {
    if (!this.length) {
      return this;
    }
    if (!$.datepicker.initialized) {
      $(document)
        .mousedown($.datepicker._checkExternalClick)
        .find("body")
        .append($.datepicker.dpDiv);
      $.datepicker.initialized = true;
    }
    var otherArgs = Array.prototype.slice.call(arguments, 1);
    if (
      typeof options == "string" &&
      (options == "isDisabled" || options == "getDate" || options == "widget")
    )
      return $.datepicker["_" + options + "Datepicker"].apply(
        $.datepicker,
        [this[0]].concat(otherArgs)
      );
    if (
      options == "option" &&
      arguments.length == 2 &&
      typeof arguments[1] == "string"
    )
      return $.datepicker["_" + options + "Datepicker"].apply(
        $.datepicker,
        [this[0]].concat(otherArgs)
      );
    return this.each(function () {
      typeof options == "string"
        ? $.datepicker["_" + options + "Datepicker"].apply(
            $.datepicker,
            [this].concat(otherArgs)
          )
        : $.datepicker._attachDatepicker(this, options);
    });
  };
  $.datepicker = new Datepicker();
  $.datepicker.initialized = false;
  $.datepicker.uuid = new Date().getTime();
  $.datepicker.version = "1.8.18";
  window["DP_jQuery_" + dpuuid] = $;
})(jQuery);
(function ($) {
  $.fn.jProductsAdded = function (options) {
    var zmienne = $.extend({}, $.fn.jProductsAdded.defaults, options);
    if ($(zmienne.id_cont).length <= 0) return false;
    $(zmienne.id_cont).css("left", "50%");
    var temp = ($(zmienne.id_cont).width() / 2) * -1;
    $(zmienne.id_cont).css("marginLeft", temp);
    $(zmienne.id_cont).css("top", "30%").fadeIn(500);
    IE_suxx(true);
    if (zmienne.autoclose == false) {
      $(zmienne.id_cont).click(function () {
        $(zmienne.id_cont).fadeOut(300);
        IE_suxx(false);
      });
    }
    if (zmienne.autoclose == true) {
      setTimeout(function () {
        $(zmienne.id_cont).fadeOut(300);
      }, zmienne.autocloseTime);
      IE_suxx(false);
    }
    function IE_suxx(flag) {
      if (flag == true) {
        if ($.browser.msie && $.browser.version == 6) {
          $("select").css("visibility", "hidden");
        }
      }
      if (flag == false) {
        if ($.browser.msie && $.browser.version == 6) {
          $("select").css("visibility", "visible");
        }
      }
    }
  };
  $.fn.jProductsAdded.defaults = {
    id_cont: "#MainProductsAdded_cont",
    autocloseTime: 5000,
  };
})(jQuery);
(function ($, undefined) {
  $.effects.transfer = function (o) {
    return this.queue(function () {
      var elem = $(this),
        target = $(o.options.to),
        endPosition = target.offset(),
        animation = {
          top: endPosition.top,
          left: endPosition.left,
          height: target.innerHeight(),
          width: target.innerWidth(),
        },
        startPosition = elem.offset(),
        transfer = $('<div class="ui-effects-transfer"></div>')
          .appendTo(document.body)
          .addClass(o.options.className)
          .css({
            top: startPosition.top,
            left: startPosition.left,
            height: elem.innerHeight(),
            width: elem.innerWidth(),
            position: "absolute",
          })
          .animate(animation, o.duration, o.options.easing, function () {
            transfer.remove();
            o.callback && o.callback.apply(elem[0], arguments);
            elem.dequeue();
          });
    });
  };
})(jQuery);
var centerImage = function (imgs, Wheight, BGcolor) {
  var elementsPreload = [];
  $(imgs).each(function (i) {
    var image = new Image();
    image.src = $(this).attr("src");
    elementsPreload[i] = $(this);
    elementHeight = 0;
    if (image.complete) {
      elementHeight = elementsPreload[i].is(":visible")
        ? elementsPreload[i].height()
        : image.height;
      if (elementHeight > Wheight) {
        elementsPreload[i].css("max-height", Wheight);
      } else {
        elementsPreload[i].css({
          "background-color": BGcolor,
          "padding-top": (Wheight - elementHeight) / 2,
          "padding-bottom": (Wheight - elementHeight) / 2,
        });
      }
    } else {
      image.onload = function () {
        elementHeight = elementsPreload[i].is(":visible")
          ? elementsPreload[i].height()
          : image.height;
        if (elementHeight > Wheight) {
          elementsPreload[i].css("max-height", Wheight);
        } else {
          elementsPreload[i].css({
            "background-color": BGcolor,
            "padding-top": (Wheight - elementHeight) / 2,
            "padding-bottom": (Wheight - elementHeight) / 2,
          });
        }
      };
    }
  });
};
jQuery.cookie = function (key, value, options) {
  if (arguments.length > 1 && String(value) !== "[object Object]") {
    options = jQuery.extend({}, options);
    if (value === null || value === undefined) {
      options.expires = -1;
    }
    if (typeof options.expires === "number") {
      var days = options.expires,
        t = (options.expires = new Date());
      t.setDate(t.getDate() + days);
    }
    value = String(value);
    return (document.cookie = [
      encodeURIComponent(key),
      "=",
      options.raw ? value : encodeURIComponent(value),
      options.expires ? "; expires=" + options.expires.toUTCString() : "",
      options.path ? "; path=" + options.path : "",
      options.domain ? "; domain=" + options.domain : "",
      options.secure ? "; secure" : "",
    ].join(""));
  }
  options = value || {};
  var result,
    decode = options.raw
      ? function (s) {
          return s;
        }
      : decodeURIComponent;
  return (result = new RegExp(
    "(?:^|; )" + encodeURIComponent(key) + "=([^;]*)"
  ).exec(document.cookie))
    ? decode(result[1])
    : null;
};
(function ($, undefined) {
  var requestIndex = 0;
  $.widget("ui.autocomplete", {
    options: {
      appendTo: document.querySelector("#menu_search"),
      autoFocus: false,
      delay: 300,
      minLength: 1,
      position: { my: "left top", at: "left bottom", collision: "none" },
      source: null,
    },
    pending: 0,
    _create: function () {
      var self = this,
        doc = this.element[0].ownerDocument,
        suppressKeyPress;
      this.element
        .addClass("ui-autocomplete-input")
        .attr("autocomplete", "off")
        .attr({
          role: "textbox",
          "aria-autocomplete": "list",
          "aria-haspopup": "true",
        })
        .bind("keydown.autocomplete", function (event) {
          if (self.options.disabled || self.element.propAttr("readOnly")) {
            return;
          }
          suppressKeyPress = false;
          var keyCode = $.ui.keyCode;
          switch (event.keyCode) {
            case keyCode.PAGE_UP:
              self._move("previousPage", event);
              break;
            case keyCode.PAGE_DOWN:
              self._move("nextPage", event);
              break;
            case keyCode.UP:
              self._move("previous", event);
              event.preventDefault();
              break;
            case keyCode.DOWN:
              self._move("next", event);
              event.preventDefault();
              break;
            case keyCode.ENTER:
            case keyCode.NUMPAD_ENTER:
              if (self.menu.active) {
                suppressKeyPress = true;
                event.preventDefault();
              }
            case keyCode.TAB:
              if (!self.menu.active) {
                return;
              }
              self.menu.select(event);
              break;
            case keyCode.ESCAPE:
              self.element.val(self.term);
              self.close(event);
              break;
            default:
              clearTimeout(self.searching);
              self.searching = setTimeout(function () {
                if (self.term != self.element.val()) {
                  self.selectedItem = null;
                  self.search(null, event);
                }
              }, self.options.delay);
              break;
          }
        })
        .bind("keypress.autocomplete", function (event) {
          if (suppressKeyPress) {
            suppressKeyPress = false;
            event.preventDefault();
          }
        })
        .bind("focus.autocomplete", function () {
          if (self.options.disabled) {
            return;
          }
          self.selectedItem = null;
          self.previous = self.element.val();
        })
        .bind("blur.autocomplete", function (event) {
          if (self.options.disabled) {
            return;
          }
          clearTimeout(self.searching);
          self.closing = setTimeout(function () {
            self.close(event);
            self._change(event);
          }, 150);
        });
      this._initSource();
      this.response = function () {
        return self._response.apply(self, arguments);
      };
      this.menu = $("<ul></ul>")
        .addClass("ui-autocomplete")
        .appendTo($(this.options.appendTo || "body", doc)[0])
        .mousedown(function (event) {
          var menuElement = self.menu.element[0];
          if (!$(event.target).closest(".ui-menu-item").length) {
            setTimeout(function () {
              $(document).one("mousedown", function (event) {
                if (
                  event.target !== self.element[0] &&
                  event.target !== menuElement &&
                  !$.ui.contains(menuElement, event.target)
                ) {
                  self.close();
                }
              });
            }, 1);
          }
          setTimeout(function () {
            clearTimeout(self.closing);
          }, 13);
        })
        .menu({
          focus: function (event, ui) {
            var item = ui.item.data("item.autocomplete");
            if (false !== self._trigger("focus", event, { item: item })) {
              if (/^key/.test(event.originalEvent.type)) {
                self.element.val(item.value);
              }
            }
          },
          selected: function (event, ui) {
            var item = ui.item.data("item.autocomplete"),
              previous = self.previous;
            if (self.element[0] !== doc.activeElement) {
              self.element.focus();
              self.previous = previous;
              setTimeout(function () {
                self.previous = previous;
                self.selectedItem = item;
              }, 1);
            }
            if (false !== self._trigger("select", event, { item: item })) {
              self.element.val(item.value);
            }
            self.term = self.element.val();
            self.close(event);
            self.selectedItem = item;
          },
          blur: function (event, ui) {
            if (
              self.menu.element.is(":visible") &&
              self.element.val() !== self.term
            ) {
              self.element.val(self.term);
            }
          },
        })
        .zIndex(this.element.zIndex() + 1)
        .css({ top: 0, left: 0 })
        .hide()
        .data("menu");
      if ($.fn.bgiframe) {
        this.menu.element.bgiframe();
      }
      self.beforeunloadHandler = function () {
        self.element.removeAttr("autocomplete");
      };
      $(window).bind("beforeunload", self.beforeunloadHandler);
    },
    destroy: function () {
      this.element
        .removeClass("ui-autocomplete-input")
        .removeAttr("autocomplete")
        .removeAttr("role")
        .removeAttr("aria-autocomplete")
        .removeAttr("aria-haspopup");
      this.menu.element.remove();
      $(window).unbind("beforeunload", this.beforeunloadHandler);
      $.Widget.prototype.destroy.call(this);
    },
    _setOption: function (key, value) {
      $.Widget.prototype._setOption.apply(this, arguments);
      if (key === "source") {
        this._initSource();
      }
      if (key === "appendTo") {
        this.menu.element.appendTo(
          $(value || "body", this.element[0].ownerDocument)[0]
        );
      }
      if (key === "disabled" && value && this.xhr) {
        this.xhr.abort();
      }
    },
    _initSource: function () {
      var self = this,
        array,
        url;
      if ($.isArray(this.options.source)) {
        array = this.options.source;
        this.source = function (request, response) {
          response($.ui.autocomplete.filter(array, request.term));
        };
      } else if (typeof this.options.source === "string") {
        url = this.options.source;
        this.source = function (request, response) {
          if (self.xhr) {
            self.xhr.abort();
          }
          self.xhr = $.ajax({
            url: url,
            data: request,
            dataType: "json",
            context: { autocompleteRequest: ++requestIndex },
            success: function (data, status) {
              if (this.autocompleteRequest === requestIndex) {
                response(data);
              }
            },
            error: function () {
              if (this.autocompleteRequest === requestIndex) {
                response([]);
              }
            },
          });
        };
      } else {
        this.source = this.options.source;
      }
    },
    search: function (value, event) {
      document.body.classList.add("search_opened");
      value = value != null ? value : this.element.val();
      this.term = this.element.val();
      if (value.length < this.options.minLength) {
        return this.close(event);
      }
      clearTimeout(this.closing);
      if (this._trigger("search", event) === false) {
        return;
      }
      return this._search(value);
    },
    _search: function (value) {
      this.pending++;
      this.element.addClass("ui-autocomplete-loading");
      this.source({ term: value }, this.response);
    },
    _response: function (content) {
      if (!this.options.disabled && content && content.length) {
        content = this._normalize(content);
        this._suggest(content);
        this._trigger("open");
      } else {
        this.close();
      }
      this.pending--;
      if (!this.pending) {
        this.element.removeClass("ui-autocomplete-loading");
      }
    },
    close: function (event) {
      document.body.classList.remove("search_opened");
      clearTimeout(this.closing);
      if (this.menu.element.is(":visible")) {
        this.menu.element.hide();
        this.menu.deactivate();
        this._trigger("close", event);
      }
    },
    _change: function (event) {
      if (this.previous !== this.element.val()) {
        this._trigger("change", event, { item: this.selectedItem });
      }
    },
    _normalize: function (items) {
      if (items.length && items[0].label && items[0].value) {
        return items;
      }
      return $.map(items, function (item) {
        if (typeof item === "string") {
          return { label: item, value: item };
        }
        return $.extend(
          { label: item.label || item.value, value: item.value || item.label },
          item
        );
      });
    },
    _suggest: function (items) {
      var ul = this.menu.element.empty().zIndex(this.element.zIndex() + 1);
      this._renderMenu(ul, items);
      this.menu.deactivate();
      this.menu.refresh();
      ul.show();
      this._resizeMenu();
      ul.position($.extend({ of: this.element }, this.options.position));
      if (this.options.autoFocus) {
        this.menu.next(new $.Event("mouseover"));
      }
    },
    _resizeMenu: function () {
      var ul = this.menu.element;
      ul.outerWidth(
        Math.max(ul.width("").outerWidth() + 1, this.element.outerWidth())
      );
    },
    _renderMenu: function (ul, items) {
      var self = this;
      $.each(items, function (index, item) {
        self._renderItem(ul, item);
      });
    },
    _renderItem: function (ul, item) {
      return $("<li></li>")
        .data("item.autocomplete", item)
        .append($("<a></a>").text(item.label))
        .appendTo(ul);
    },
    _move: function (direction, event) {
      if (!this.menu.element.is(":visible")) {
        this.search(null, event);
        return;
      }
      if (
        (this.menu.first() && /^previous/.test(direction)) ||
        (this.menu.last() && /^next/.test(direction))
      ) {
        this.element.val(this.term);
        this.menu.deactivate();
        return;
      }
      this.menu[direction](event);
    },
    widget: function () {
      return this.menu.element;
    },
  });
  $.extend($.ui.autocomplete, {
    escapeRegex: function (value) {
      return value.replace(/[-[\]{}()*+?.,\\^$|#\s]/g, "\\$&");
    },
    filter: function (array, term) {
      var matcher = new RegExp($.ui.autocomplete.escapeRegex(term), "i");
      return $.grep(array, function (value) {
        return matcher.test(value.label || value.value || value);
      });
    },
  });
})(jQuery);
(function ($) {
  $.widget("ui.menu", {
    _create: function () {
      var self = this;
      this.element
        .addClass("ui-menu ui-widget ui-widget-content ui-corner-all")
        .attr({
          role: "listbox",
          "aria-activedescendant": "ui-active-menuitem",
        })
        .click(function (event) {
          if (!$(event.target).closest(".ui-menu-item a").length) {
            return;
          }
          event.preventDefault();
          self.select(event);
        });
      this.refresh();
    },
    refresh: function () {
      var self = this;
      var items = this.element
        .children("li:not(.ui-menu-item):has(a)")
        .addClass("ui-menu-item")
        .attr("role", "menuitem");
      items
        .children("a")
        .addClass("ui-corner-all")
        .attr("tabindex", -1)
        .mouseenter(function (event) {
          self.activate(event, $(this).parent());
        })
        .mouseleave(function () {
          self.deactivate();
        });
    },
    activate: function (event, item) {
      this.deactivate();
      if (this.hasScroll()) {
        var offset = item.offset().top - this.element.offset().top,
          scroll = this.element.scrollTop(),
          elementHeight = this.element.height();
        if (offset < 0) {
          this.element.scrollTop(scroll + offset);
        } else if (offset >= elementHeight) {
          this.element.scrollTop(
            scroll + offset - elementHeight + item.height()
          );
        }
      }
      this.active = item
        .eq(0)
        .children("a")
        .addClass("ui-state-hover")
        .attr("id", "ui-active-menuitem")
        .end();
      this._trigger("focus", event, { item: item });
    },
    deactivate: function () {
      if (!this.active) {
        return;
      }
      this.active.children("a").removeClass("ui-state-hover").removeAttr("id");
      this._trigger("blur");
      this.active = null;
    },
    next: function (event) {
      this.move("next", ".ui-menu-item:first", event);
    },
    previous: function (event) {
      this.move("prev", ".ui-menu-item:last", event);
    },
    first: function () {
      return this.active && !this.active.prevAll(".ui-menu-item").length;
    },
    last: function () {
      return this.active && !this.active.nextAll(".ui-menu-item").length;
    },
    move: function (direction, edge, event) {
      if (!this.active) {
        this.activate(event, this.element.children(edge));
        return;
      }
      var next = this.active[direction + "All"](".ui-menu-item").eq(0);
      if (next.length) {
        this.activate(event, next);
      } else {
        this.activate(event, this.element.children(edge));
      }
    },
    nextPage: function (event) {
      if (this.hasScroll()) {
        if (!this.active || this.last()) {
          this.activate(event, this.element.children(".ui-menu-item:first"));
          return;
        }
        var base = this.active.offset().top,
          height = this.element.height(),
          result = this.element.children(".ui-menu-item").filter(function () {
            var close = $(this).offset().top - base - height + $(this).height();
            return close < 10 && close > -10;
          });
        if (!result.length) {
          result = this.element.children(".ui-menu-item:last");
        }
        this.activate(event, result);
      } else {
        this.activate(
          event,
          this.element
            .children(".ui-menu-item")
            .filter(!this.active || this.last() ? ":first" : ":last")
        );
      }
    },
    previousPage: function (event) {
      if (this.hasScroll()) {
        if (!this.active || this.first()) {
          this.activate(event, this.element.children(".ui-menu-item:last"));
          return;
        }
        var base = this.active.offset().top,
          height = this.element.height();
        result = this.element.children(".ui-menu-item").filter(function () {
          var close = $(this).offset().top - base + height - $(this).height();
          return close < 10 && close > -10;
        });
        if (!result.length) {
          result = this.element.children(".ui-menu-item:first");
        }
        this.activate(event, result);
      } else {
        this.activate(
          event,
          this.element
            .children(".ui-menu-item")
            .filter(!this.active || this.first() ? ":last" : ":first")
        );
      }
    },
    hasScroll: function () {
      return (
        this.element.height() <
        this.element[$.fn.prop ? "prop" : "attr"]("scrollHeight")
      );
    },
    select: function (event) {
      this._trigger("selected", event, { item: this.active });
    },
  });
})(jQuery);
!(function (n) {
  "use strict";
  function t(n, t) {
    var r = (65535 & n) + (65535 & t);
    return (((n >> 16) + (t >> 16) + (r >> 16)) << 16) | (65535 & r);
  }
  function r(n, t) {
    return (n << t) | (n >>> (32 - t));
  }
  function e(n, e, o, u, c, f) {
    return t(r(t(t(e, n), t(u, f)), c), o);
  }
  function o(n, t, r, o, u, c, f) {
    return e((t & r) | (~t & o), n, t, u, c, f);
  }
  function u(n, t, r, o, u, c, f) {
    return e((t & o) | (r & ~o), n, t, u, c, f);
  }
  function c(n, t, r, o, u, c, f) {
    return e(t ^ r ^ o, n, t, u, c, f);
  }
  function f(n, t, r, o, u, c, f) {
    return e(r ^ (t | ~o), n, t, u, c, f);
  }
  function i(n, r) {
    (n[r >> 5] |= 128 << r % 32), (n[14 + (((r + 64) >>> 9) << 4)] = r);
    var e,
      i,
      a,
      d,
      h,
      l = 1732584193,
      g = -271733879,
      v = -1732584194,
      m = 271733878;
    for (e = 0; e < n.length; e += 16)
      (i = l),
        (a = g),
        (d = v),
        (h = m),
        (g = f(
          (g = f(
            (g = f(
              (g = f(
                (g = c(
                  (g = c(
                    (g = c(
                      (g = c(
                        (g = u(
                          (g = u(
                            (g = u(
                              (g = u(
                                (g = o(
                                  (g = o(
                                    (g = o(
                                      (g = o(
                                        g,
                                        (v = o(
                                          v,
                                          (m = o(
                                            m,
                                            (l = o(
                                              l,
                                              g,
                                              v,
                                              m,
                                              n[e],
                                              7,
                                              -680876936
                                            )),
                                            g,
                                            v,
                                            n[e + 1],
                                            12,
                                            -389564586
                                          )),
                                          l,
                                          g,
                                          n[e + 2],
                                          17,
                                          606105819
                                        )),
                                        m,
                                        l,
                                        n[e + 3],
                                        22,
                                        -1044525330
                                      )),
                                      (v = o(
                                        v,
                                        (m = o(
                                          m,
                                          (l = o(
                                            l,
                                            g,
                                            v,
                                            m,
                                            n[e + 4],
                                            7,
                                            -176418897
                                          )),
                                          g,
                                          v,
                                          n[e + 5],
                                          12,
                                          1200080426
                                        )),
                                        l,
                                        g,
                                        n[e + 6],
                                        17,
                                        -1473231341
                                      )),
                                      m,
                                      l,
                                      n[e + 7],
                                      22,
                                      -45705983
                                    )),
                                    (v = o(
                                      v,
                                      (m = o(
                                        m,
                                        (l = o(
                                          l,
                                          g,
                                          v,
                                          m,
                                          n[e + 8],
                                          7,
                                          1770035416
                                        )),
                                        g,
                                        v,
                                        n[e + 9],
                                        12,
                                        -1958414417
                                      )),
                                      l,
                                      g,
                                      n[e + 10],
                                      17,
                                      -42063
                                    )),
                                    m,
                                    l,
                                    n[e + 11],
                                    22,
                                    -1990404162
                                  )),
                                  (v = o(
                                    v,
                                    (m = o(
                                      m,
                                      (l = o(
                                        l,
                                        g,
                                        v,
                                        m,
                                        n[e + 12],
                                        7,
                                        1804603682
                                      )),
                                      g,
                                      v,
                                      n[e + 13],
                                      12,
                                      -40341101
                                    )),
                                    l,
                                    g,
                                    n[e + 14],
                                    17,
                                    -1502002290
                                  )),
                                  m,
                                  l,
                                  n[e + 15],
                                  22,
                                  1236535329
                                )),
                                (v = u(
                                  v,
                                  (m = u(
                                    m,
                                    (l = u(
                                      l,
                                      g,
                                      v,
                                      m,
                                      n[e + 1],
                                      5,
                                      -165796510
                                    )),
                                    g,
                                    v,
                                    n[e + 6],
                                    9,
                                    -1069501632
                                  )),
                                  l,
                                  g,
                                  n[e + 11],
                                  14,
                                  643717713
                                )),
                                m,
                                l,
                                n[e],
                                20,
                                -373897302
                              )),
                              (v = u(
                                v,
                                (m = u(
                                  m,
                                  (l = u(l, g, v, m, n[e + 5], 5, -701558691)),
                                  g,
                                  v,
                                  n[e + 10],
                                  9,
                                  38016083
                                )),
                                l,
                                g,
                                n[e + 15],
                                14,
                                -660478335
                              )),
                              m,
                              l,
                              n[e + 4],
                              20,
                              -405537848
                            )),
                            (v = u(
                              v,
                              (m = u(
                                m,
                                (l = u(l, g, v, m, n[e + 9], 5, 568446438)),
                                g,
                                v,
                                n[e + 14],
                                9,
                                -1019803690
                              )),
                              l,
                              g,
                              n[e + 3],
                              14,
                              -187363961
                            )),
                            m,
                            l,
                            n[e + 8],
                            20,
                            1163531501
                          )),
                          (v = u(
                            v,
                            (m = u(
                              m,
                              (l = u(l, g, v, m, n[e + 13], 5, -1444681467)),
                              g,
                              v,
                              n[e + 2],
                              9,
                              -51403784
                            )),
                            l,
                            g,
                            n[e + 7],
                            14,
                            1735328473
                          )),
                          m,
                          l,
                          n[e + 12],
                          20,
                          -1926607734
                        )),
                        (v = c(
                          v,
                          (m = c(
                            m,
                            (l = c(l, g, v, m, n[e + 5], 4, -378558)),
                            g,
                            v,
                            n[e + 8],
                            11,
                            -2022574463
                          )),
                          l,
                          g,
                          n[e + 11],
                          16,
                          1839030562
                        )),
                        m,
                        l,
                        n[e + 14],
                        23,
                        -35309556
                      )),
                      (v = c(
                        v,
                        (m = c(
                          m,
                          (l = c(l, g, v, m, n[e + 1], 4, -1530992060)),
                          g,
                          v,
                          n[e + 4],
                          11,
                          1272893353
                        )),
                        l,
                        g,
                        n[e + 7],
                        16,
                        -155497632
                      )),
                      m,
                      l,
                      n[e + 10],
                      23,
                      -1094730640
                    )),
                    (v = c(
                      v,
                      (m = c(
                        m,
                        (l = c(l, g, v, m, n[e + 13], 4, 681279174)),
                        g,
                        v,
                        n[e],
                        11,
                        -358537222
                      )),
                      l,
                      g,
                      n[e + 3],
                      16,
                      -722521979
                    )),
                    m,
                    l,
                    n[e + 6],
                    23,
                    76029189
                  )),
                  (v = c(
                    v,
                    (m = c(
                      m,
                      (l = c(l, g, v, m, n[e + 9], 4, -640364487)),
                      g,
                      v,
                      n[e + 12],
                      11,
                      -421815835
                    )),
                    l,
                    g,
                    n[e + 15],
                    16,
                    530742520
                  )),
                  m,
                  l,
                  n[e + 2],
                  23,
                  -995338651
                )),
                (v = f(
                  v,
                  (m = f(
                    m,
                    (l = f(l, g, v, m, n[e], 6, -198630844)),
                    g,
                    v,
                    n[e + 7],
                    10,
                    1126891415
                  )),
                  l,
                  g,
                  n[e + 14],
                  15,
                  -1416354905
                )),
                m,
                l,
                n[e + 5],
                21,
                -57434055
              )),
              (v = f(
                v,
                (m = f(
                  m,
                  (l = f(l, g, v, m, n[e + 12], 6, 1700485571)),
                  g,
                  v,
                  n[e + 3],
                  10,
                  -1894986606
                )),
                l,
                g,
                n[e + 10],
                15,
                -1051523
              )),
              m,
              l,
              n[e + 1],
              21,
              -2054922799
            )),
            (v = f(
              v,
              (m = f(
                m,
                (l = f(l, g, v, m, n[e + 8], 6, 1873313359)),
                g,
                v,
                n[e + 15],
                10,
                -30611744
              )),
              l,
              g,
              n[e + 6],
              15,
              -1560198380
            )),
            m,
            l,
            n[e + 13],
            21,
            1309151649
          )),
          (v = f(
            v,
            (m = f(
              m,
              (l = f(l, g, v, m, n[e + 4], 6, -145523070)),
              g,
              v,
              n[e + 11],
              10,
              -1120210379
            )),
            l,
            g,
            n[e + 2],
            15,
            718787259
          )),
          m,
          l,
          n[e + 9],
          21,
          -343485551
        )),
        (l = t(l, i)),
        (g = t(g, a)),
        (v = t(v, d)),
        (m = t(m, h));
    return [l, g, v, m];
  }
  function a(n) {
    var t,
      r = "",
      e = 32 * n.length;
    for (t = 0; t < e; t += 8)
      r += String.fromCharCode((n[t >> 5] >>> t % 32) & 255);
    return r;
  }
  function d(n) {
    var t,
      r = [];
    for (r[(n.length >> 2) - 1] = void 0, t = 0; t < r.length; t += 1) r[t] = 0;
    var e = 8 * n.length;
    for (t = 0; t < e; t += 8)
      r[t >> 5] |= (255 & n.charCodeAt(t / 8)) << t % 32;
    return r;
  }
  function h(n) {
    return a(i(d(n), 8 * n.length));
  }
  function l(n, t) {
    var r,
      e,
      o = d(n),
      u = [],
      c = [];
    for (
      u[15] = c[15] = void 0, o.length > 16 && (o = i(o, 8 * n.length)), r = 0;
      r < 16;
      r += 1
    )
      (u[r] = 909522486 ^ o[r]), (c[r] = 1549556828 ^ o[r]);
    return (e = i(u.concat(d(t)), 512 + 8 * t.length)), a(i(c.concat(e), 640));
  }
  function g(n) {
    var t,
      r,
      e = "";
    for (r = 0; r < n.length; r += 1)
      (t = n.charCodeAt(r)),
        (e +=
          "0123456789abcdef".charAt((t >>> 4) & 15) +
          "0123456789abcdef".charAt(15 & t));
    return e;
  }
  function v(n) {
    return unescape(encodeURIComponent(n));
  }
  function m(n) {
    return h(v(n));
  }
  function p(n) {
    return g(m(n));
  }
  function s(n, t) {
    return l(v(n), v(t));
  }
  function C(n, t) {
    return g(s(n, t));
  }
  function A(n, t, r) {
    return t ? (r ? s(t, n) : C(t, n)) : r ? m(n) : p(n);
  }
  "function" == typeof define && define.amd
    ? define(function () {
        return A;
      })
    : "object" == typeof module && module.exports
    ? (module.exports = A)
    : (n.md5 = A);
})(window);
var projectorv3_disable_ajax = projectorv3_disable_ajax || 1;
var projectorClass = function () {
  classObj = this;
  this.currency = "";
  this.curr_class = "";
  this.firstRun = true;
  this.onDisableAlert = true;
  this.timeoutAjax = 18000;
  this.errorMsg = [];
  this.currentSizeObj = {};
  this.configObj = {};
  this.action = "";
  this.innerHTML = "";
  this.options = [];
  this.options["hide_unit"] = false;
  this.options["friendly_shipping_format"] = [];
  this.options["endStartFunction"] = function () {};
  this.options["endInitFunction"] = function () {};
  this.options["beginStartFunction"] = function () {};
  this.options["formatPrice"] = function (price) {};
  this.externalFormatFn = false;
  this.options["endGetAjaxProductDataFunction"] = function () {};
  this.options["clearXMLGetAjaxProductDataFunction"] = function (data) {};
  this.options["beginGetAjaxProductDataFunction"] = function () {};
  this.options["endSetCurrentSizeFunction"] = function () {};
  this.options["ajaxAddFunction"] = function (data) {
    classObj.alert(classObj.txt["dodano_produkt"]);
  };
  this.options["contenersPrefix"] = "projector_";
  this.options["curr_before_price"] = false;
  this.options["choiceSize"] = false;
  this.options["contact_link"] = "/contact.php";
  this.isStarted = false;
  this.prefix = this.options["contenersPrefix"];
  this.actions = {};
  this.txt = [];
  this.txt["oszczedzasz"] = "Oszczędzasz ";
  this.txt["taniej"] = "%, czyli ";
  this.txt["wzestawie"] = " kupując w zestawie";
  this.txt["niedostepny"] = "Produkt niedostępny";
  this.txt["tylkotel"] = "Cena na telefon. Skontaktuj się ze sprzedawcą";
  this.txt["tylko_punkty"] = "Towar dostępny tylko w programie lojalnościowym.";
  this.txt["gratis"] = "Dostawa gratis!";
  this.txt["gratis_produkt"] = "Gratis!";
  this.txt["niemastanu"] = "Produkt niedostępny";
  this.txt["status_24"] = "w ciągu 24h";
  this.txt["status_natychmiast"] = "w ciągu 24h";
  this.txt["day"] = " dzień ";
  this.txt["days"] = " dni ";
  this.txt["hour"] = " godz. ";
  this.txt["hours"] = " godz. ";
  this.txt["min"] = " min ";
  this.txt["mins"] = " min ";
  this.txt["za"] = " za ";
  this.txt["proc"] = "%";
  this.txt["wybrany_rozmiar"] = "Rozmiar";
  this.txt["wysylka"] = "Wysyłka ";
  this.txt["wysylka_za"] = "Wysyłka w ciągu ";
  this.txt["dostepny"] = "Dostawa ";
  this.txt["dostepny_za"] = "Dostawa za ";
  this.txt["pkt"] = "pkt.";
  this.txt["status_full"] = "większa ilość";
  this.txt["status_amount_null"] = "brak w magazynie";
  this.txt["forpointsonly"] = "Produkt możesz kupić za punkty";
  this.txt["disable_desc"] = "Skontaktuj się z nami";
  this.txt["choiceSize"] = "Wybierz rozmiar";
  this.txt["maksymalnie"] = "Maksymalnie możesz zamówić";
  this.txt["minimalnie"] = "Minimalnie możesz zamówić";
  this.txt["brak_magazyn"] = "Brak na magazynie";
  this.txt["dodano_produkt"] = "Produkt został dodany.";
  this.txt["dodano_produkt_blad"] = "Wystąpił błąd podczas dodawania produktu.";
  this.txt["ilosc_mm"] = "";
  this.txt["ilosc_mo"] = "";
  this.txt["ilosc_mo_inf"] = "";
  this.txt["infinity"] = "";
  this.txt["koszt_od"] = "Koszt od ";
  this.txt["wysylka_total_begin"] = "<br/>(z tow. z koszyka ";
  this.txt["wysylka_total_end"] = ")";
  this.txt["nawias_end"] = "";
  this.txt["amount"] = "";
  var P_CALCULATE = true;
  var P_CALCULATE_RABAT = true;
  var P_NO_CALCULATE = false;
  var P_CLEAR_DATA = true;
  this.isset = function (varName) {
    return undefined === window[varName] ? false : true;
  };
  this.getAttr = function (obj, attribute) {
    if (obj.is("[" + attribute + "]")) {
      return obj.attr(attribute);
    } else {
      return "";
    }
  };
  this.getData = function (element) {
    try {
      return element;
    } catch (err) {}
  };
  this.getIndex = function (obj, index) {
    var i = 0;
    for (var attr in obj) {
      if (index === i) {
        return attr;
      }
      i++;
    }
    return null;
  };
  this.formatPrice = function (
    price,
    calculate,
    p_currency,
    p_clear_data,
    p_calculate_rabate
  ) {
    if (p_currency) {
      currency = p_currency;
    } else {
      currency = this.currentSizeObj.currency;
    }
    if (p_calculate_rabate) {
      p_calculate_rabate = true;
    } else {
      p_calculate_rabate = false;
    }
    if (calculate) {
      if (this.configObj.rebateNumber && p_calculate_rabate) {
        price = this.configObj.rebateNumber.price;
      }
      price = price * this.configObj.valueOfNumberInput;
    }
    if (p_clear_data) return price;
    if (this.externalFormatFn) {
      return this.options["formatPrice"]({ price: price, currency: currency });
    }
    if (this.options["curr_before_price"]) {
      return (
        '<span class="projector_price"><span class="projector_currency">' +
        currency +
        "</span>" +
        (1 * price).toFixed(2) +
        "</span>"
      );
    } else {
      return (
        '<span class="projector_price">' +
        (1 * price).toFixed(2) +
        '<span class="projector_currency">' +
        currency +
        "</span></span>"
      );
    }
  };
  this.status_description = function () {
    $("#" + this.prefix + "status_gfx").hide();
    if (
      this.currentSizeObj.amount_mm &&
      this.currentSizeObj.amount_mo &&
      this.txt["ilosc_mm"] != ""
    ) {
      var _mm = this.currentSizeObj.amount_mm;
      var _mo = this.currentSizeObj.amount_mo;
      var _mmunit =
        _mm +
        " " +
        (_mm > 1 ? this.currentSizeObj.unit_plural : this.currentSizeObj.unit);
      var _mounit =
        _mo +
        " " +
        (_mo > 1 ? this.currentSizeObj.unit_plural : this.currentSizeObj.unit);
      var _mm_txt = this.txt["ilosc_mm"].format(_mmunit);
      var _mo_txt = this.txt["ilosc_mo"].format(_mounit);
      if (_mm > 0 && _mo == -1) {
        $("#" + this.prefix + "status_description").html(
          '<div id="#' +
            this.prefix +
            'amount_mm">' +
            _mm_txt +
            '</div><div id="#' +
            this.prefix +
            'amount_mo">' +
            this.txt["ilosc_mo_inf"] +
            "</div>"
        );
        return false;
      } else if (_mm > 0 && _mo > 0) {
        $("#" + this.prefix + "status_description").html(
          '<div id="#' +
            this.prefix +
            'amount_mm">' +
            _mm_txt +
            '</div><div id="#' +
            this.prefix +
            'amount_mo">' +
            _mo_txt +
            "</div>"
        );
        return false;
      }
    }
    if (
      this.currentSizeObj.availability.delivery_date &&
      this.currentSizeObj.availability.status == "disable"
    ) {
      $("#" + this.prefix + "status_description").html(
        this.currentSizeObj.availability.status_description +
          " <span>" +
          this.currentSizeObj.availability.delivery_date +
          "</span>"
      );
    } else {
      if (this.currentSizeObj.availability.status_description) {
        $("#" + this.prefix + "status_description").html(
          this.currentSizeObj.availability.status_description
        );
      } else {
        $("#" + this.prefix + "status_description_wrapper").hide();
      }
    }
    if (this.currentSizeObj.availability.status_gfx) {
      $("#" + this.prefix + "status_gfx")
        .show()
        .attr("src", this.currentSizeObj.availability.status_gfx);
    }
  };
  this.sellBy = function (s, p, i) {
    if (this.currentSizeObj.availability.status == "disable") {
      if (
        this.onDisableAlert &&
        !(
          this.currentSizeObj.product_type == "product_bundle" &&
          this.firstRun == true
        )
      ) {
        this.alert(this.txt["niedostepny"]);
      }
      return s;
    }
    s = parseFloat(s);
    p = parseFloat(p);
    i = parseFloat(i);
    if (!$.isNumeric(i) || i <= s) {
      if (!jQuery.isEmptyObject(product_data.order_quantity_range)) {
        s = s.toFixed(p);
      } else {
        return s.toFixed(p);
      }
    }
    number = Math.floor(i / s) * s;
    number =
      ((i / s) * s - number).toFixed(p + 1) > 0
        ? (1 * number + s).toFixed(p)
        : number.toFixed(p);
    number = parseFloat(number);
    var fixedAmountMax = this.currentSizeObj.amount;
    var fixedAmountMin = s;
    if (!jQuery.isEmptyObject(product_data.order_quantity_range)) {
      var oqr = product_data.order_quantity_range;
      if (oqr.max_quantity_per_order) {
        var max_qpo = parseFloat(oqr.max_quantity_per_order);
        fixedAmountMax = fixedAmountMax > max_qpo ? max_qpo : fixedAmountMax;
      }
      if (oqr.max_size_quantity_per_order) {
        var max_sqpo = parseFloat(oqr.max_size_quantity_per_order);
        fixedAmountMax = fixedAmountMax > max_sqpo ? max_sqpo : fixedAmountMax;
      }
      if (oqr.min_quantity_per_order) {
        var min_qpo = parseFloat(oqr.min_quantity_per_order);
        fixedAmountMin = min_qpo > fixedAmountMin ? min_qpo : fixedAmountMin;
      }
      if (oqr.min_size_quantity_per_order) {
        var min_sqpo = parseFloat(oqr.min_size_quantity_per_order);
        fixedAmountMin = min_sqpo > fixedAmountMin ? min_sqpo : fixedAmountMin;
      }
    }
    fixedAmountMin = fixedAmountMax > fixedAmountMin ? fixedAmountMin : s;
    if (fixedAmountMin && number < fixedAmountMin) {
      if (this.isStarted)
        this.alert(
          this.txt["minimalnie"] +
            " " +
            (Math.ceil(parseFloat(fixedAmountMin) / s) * s).toFixed(p) +
            " " +
            this.currentSizeObj.unit
        );
      this.isStarted = true;
      return (Math.ceil(parseFloat(fixedAmountMin) / s) * s).toFixed(p);
    }
    if (number > fixedAmountMax && fixedAmountMax != -1) {
      if (this.isStarted)
        this.alert(
          this.txt["maksymalnie"] +
            " " +
            (Math.floor(parseFloat(fixedAmountMax) / s) * s).toFixed(p) +
            " " +
            this.currentSizeObj.unit
        );
      this.isStarted = true;
      return (Math.floor(parseFloat(fixedAmountMax) / s) * s).toFixed(p);
    } else {
      this.isStarted = true;
      return number;
    }
  };
  this.projectorInit = function (obj) {
    if (this.isset("product_data")) {
      this.curr_class = $("#" + this.prefix + "form").attr("class");
      if (obj.contenersPrefix) {
        this.options["contenersPrefix"] = obj.contenersPrefix;
        this.prefix = obj.contenersPrefix;
      }
      if (obj.onDisableAlert !== "undefined") {
        this.onDisableAlert = obj.onDisableAlert;
      }
      if (obj.beginStartFunction) {
        this.options["beginStartFunction"] = obj.beginStartFunction;
      }
      if (obj.formatPrice) {
        this.options["formatPrice"] = obj.formatPrice;
        this.externalFormatFn = true;
      }
      if (obj.endInitFunction) {
        this.options["endInitFunction"] = obj.endInitFunction;
      }
      if (obj.endStartFunction) {
        this.options["endStartFunction"] = obj.endStartFunction;
      }
      if (obj.endSetCurrentSizeFunction) {
        this.options["endSetCurrentSizeFunction"] =
          obj.endSetCurrentSizeFunction;
      }
      if (obj.ajaxAddFunction) {
        this.options["ajaxAddFunction"] = obj.ajaxAddFunction;
      }
      if (obj.clearXMLGetAjaxProductDataFunction) {
        this.options["clearXMLGetAjaxProductDataFunction"] =
          obj.clearXMLGetAjaxProductDataFunction;
      }
      if (obj.endGetAjaxProductDataFunction) {
        this.options["endGetAjaxProductDataFunction"] =
          obj.endGetAjaxProductDataFunction;
      }
      if (obj.beginGetAjaxProductDataFunction) {
        this.options["beginGetAjaxProductDataFunction"] =
          obj.beginGetAjaxProductDataFunction;
      }
      if (obj.hide_unit) {
        this.options["hide_unit"] = obj.hide_unit;
      }
      if (obj.curr_before_price) {
        this.options["curr_before_price"] = obj.curr_before_price;
      }
      if (obj.contact_link) {
        this.options["contact_link"] = obj.contact_link;
      }
      if (obj.friendly_shipping_format) {
        this.options["friendly_shipping_format"] = obj.friendly_shipping_format;
      }
      if (product_data.currency) this.currency = product_data.currency;
      this.txt["amount"] = $("#" + this.prefix + "amount").html();
      if (product_data.sizes && product_data.sizes["onesize"]) {
        this.setCurrentSizeObj(this.getIndex(product_data.sizes, 0));
        this.start();
      }
    } else {
      this.errorMsg.push("no data");
      return false;
    }
    this.options["endInitFunction"]();
  };
  this.variety = function (value, single, plural) {
    return value == 1 ? single : plural;
  };
  this.shippingTimeBuffer = [];
  this.timeoutHandle = "";
  this.shippingTime = function (url) {
    rezult = "";
    if (projectorv3_disable_ajax && projectorv3_disable_ajax == 0) {
      rezult = "";
      if (this.currentSizeObj.shipping_time) {
        rezult =
          this.currentSizeObj.availability.status == "disable"
            ? this.txt["dostepny_za"]
            : this.txt["wysylka_za"];
        var rezultTmp = "";
        var onlyDays = true;
        if (
          this.currentSizeObj.shipping_time.days &&
          this.currentSizeObj.shipping_time.days > 0
        ) {
          rezultTmp +=
            this.currentSizeObj.shipping_time.days +
            this.variety(
              this.currentSizeObj.shipping_time.days,
              this.txt["day"],
              this.txt["days"]
            ) +
            " ";
        }
        if (
          this.currentSizeObj.shipping_time.hours &&
          this.currentSizeObj.shipping_time.hours > 0
        ) {
          rezultTmp +=
            this.currentSizeObj.shipping_time.hours +
            this.variety(
              this.currentSizeObj.shipping_time.hours,
              this.txt["hour"],
              this.txt["hours"]
            ) +
            " ";
          onlyDays = false;
        }
        if (
          this.currentSizeObj.shipping_time.minutes &&
          this.currentSizeObj.shipping_time.minutes > 0
        ) {
          rezultTmp +=
            this.currentSizeObj.shipping_time.minutes +
            this.variety(
              this.currentSizeObj.shipping_time.minutes,
              this.txt["min"],
              this.txt["mins"]
            ) +
            " ";
          onlyDays = false;
        }
        if (onlyDays) {
          if (
            typeof this.currentSizeObj.shipping_time.week_day != "undefined" &&
            this.options["friendly_shipping_format"].length == 8
          ) {
            if (projectorObj.currentSizeObj.shipping_time.today == "true") {
              this.currentSizeObj.shipping_time.week_day = 0;
            }
            var week_day = parseInt(this.currentSizeObj.shipping_time.week_day);
            var week_amount = parseInt(
              this.currentSizeObj.shipping_time.week_amount
            );
            if (
              week_amount == 0 &&
              this.options["friendly_shipping_format"][week_day]
            ) {
              return this.options["friendly_shipping_format"][week_day];
            }
          }
          if (this.currentSizeObj.shipping_time.days == 0) {
            rezult = this.txt["wysylka"];
            rezultTmp = this.txt["status_natychmiast"];
          }
          if (this.currentSizeObj.shipping_time.days == "1") {
            rezult = this.txt["wysylka"];
            rezultTmp = this.txt["status_24"];
          }
        }
        rezult = rezult + rezultTmp;
      } else {
        if (this.currentSizeObj.availability.status == "disable") {
          if (this.currentSizeObj.availability.delivery_days > 1) {
            rezult = this.txt["dostepny_za"];
          } else if (this.currentSizeObj.availability.delivery_days <= 1) {
            rezult = this.txt["dostepny"];
          }
        } else {
          if (this.currentSizeObj.availability.delivery_days > 1) {
            rezult = this.txt["wysylka_za"];
          } else if (this.currentSizeObj.availability.delivery_days <= 1) {
            rezult = this.txt["wysylka"];
          }
        }
        if (this.currentSizeObj.availability.hours) {
          rezult +=
            this.currentSizeObj.availability.hours +
            this.variety(
              this.currentSizeObj.availability.hours,
              this.txt["hour"],
              this.txt["hours"]
            );
        } else {
          if (this.currentSizeObj.availability.delivery_days == 0) {
            rezult += this.txt["status_natychmiast"];
          }
          if (this.currentSizeObj.availability.delivery_days == "1") {
            rezult += this.txt["status_24"];
          }
          if (this.currentSizeObj.availability.delivery_days > "1") {
            rezult +=
              this.currentSizeObj.availability.delivery_days +
              this.variety(
                this.currentSizeObj.availability.delivery_days,
                this.txt["day"],
                this.txt["days"]
              );
          }
        }
        if (this.currentSizeObj.availability_total) {
          if (
            parseInt(this.currentSizeObj.availability_total.delivery_days) ==
              0 &&
            parseInt(this.currentSizeObj.availability_total.delivery_hours) > 0
          ) {
            rezult +=
              this.txt["wysylka_total_begin"] +
              this.currentSizeObj.availability_total.total_hours +
              this.variety(
                this.currentSizeObj.availability_total.total_hours,
                this.txt["hour"],
                this.txt["hours"]
              ) +
              this.txt["wysylka_total_end"];
          } else if (
            parseInt(this.currentSizeObj.availability_total.delivery_days) == 1
          ) {
            rezult +=
              this.txt["wysylka_total_begin"] +
              this.txt["status_24"] +
              this.txt["wysylka_total_end"];
          } else if (
            parseInt(this.currentSizeObj.availability_total.delivery_days) > 1
          ) {
            rezult +=
              this.txt["wysylka_total_begin"] +
              this.variety(
                this.currentSizeObj.availability_total.delivery_days,
                this.txt["day"],
                this.txt["days"]
              ) +
              this.txt["days"] +
              this.txt["wysylka_total_end"];
          }
        }
      }
      return rezult;
    } else {
      $this = this;
      var productQUANTITY = $("input#projector_number").val();
      var productParams =
        "products[" +
        product_data.product_id +
        "][" +
        $this.currentSizeObj.type +
        "][quantity]=" +
        productQUANTITY;
      var productParamsMD5 = md5(productParams);
      var url =
        url ||
        "/ajax/get-deliveries.php?mode=productAndBasket&" + productParams;
      checkBuffer = $.grep(this.shippingTimeBuffer, function (n) {
        return n.key == productParamsMD5;
      });
      if (checkBuffer[0]) {
        return new Promise(function (resolve, reject) {
          resolve(checkBuffer[0].value);
        });
      }
      return new Promise(function (resolve, reject) {
        $.getJSON(url, function (json) {
          $this.currentSizeObj.shipping_time = json.shipping_time;
          if ($this.currentSizeObj.shipping_time) {
            rezult =
              $this.currentSizeObj.availability.status == "disable"
                ? $this.txt["dostepny_za"]
                : $this.txt["wysylka_za"];
            var rezultTmp = "";
            var onlyDays = true;
            if (
              $this.currentSizeObj.shipping_time.days &&
              $this.currentSizeObj.shipping_time.days > 0
            ) {
              rezultTmp +=
                $this.currentSizeObj.shipping_time.days +
                $this.variety(
                  $this.currentSizeObj.shipping_time.days,
                  $this.txt["day"],
                  $this.txt["days"]
                ) +
                " ";
            }
            if (
              $this.currentSizeObj.shipping_time.hours &&
              $this.currentSizeObj.shipping_time.hours > 0
            ) {
              rezultTmp +=
                $this.currentSizeObj.shipping_time.hours +
                $this.variety(
                  $this.currentSizeObj.shipping_time.hours,
                  $this.txt["hour"],
                  $this.txt["hours"]
                ) +
                " ";
              onlyDays = false;
            }
            if (
              $this.currentSizeObj.shipping_time.minutes &&
              $this.currentSizeObj.shipping_time.minutes > 0
            ) {
              rezultTmp +=
                $this.currentSizeObj.shipping_time.minutes +
                $this.variety(
                  $this.currentSizeObj.shipping_time.minutes,
                  $this.txt["min"],
                  $this.txt["mins"]
                ) +
                " ";
              onlyDays = false;
            }
            if (onlyDays) {
              if (
                typeof $this.currentSizeObj.shipping_time.week_day !=
                  "undefined" &&
                $this.options["friendly_shipping_format"].length == 8
              ) {
                if (projectorObj.currentSizeObj.shipping_time.today == "true") {
                  $this.currentSizeObj.shipping_time.week_day = 0;
                }
                var week_day = parseInt(
                  $this.currentSizeObj.shipping_time.week_day
                );
                var week_amount = parseInt(
                  $this.currentSizeObj.shipping_time.week_amount
                );
                if (
                  week_amount == 0 &&
                  $this.options["friendly_shipping_format"][week_day]
                ) {
                  $this.shippingTimeBuffer.push({
                    key: productParamsMD5,
                    value: $this.options["friendly_shipping_format"][week_day],
                  });
                  resolve($this.options["friendly_shipping_format"][week_day]);
                  return true;
                }
              }
              if ($this.currentSizeObj.shipping_time.days == 0) {
                rezult = $this.txt["wysylka"];
                rezultTmp = $this.txt["status_natychmiast"];
              }
              if ($this.currentSizeObj.shipping_time.days == "1") {
                rezult = $this.txt["wysylka"];
                rezultTmp = $this.txt["status_24"];
              }
            }
            rezult = rezult + rezultTmp;
          } else {
            if ($this.currentSizeObj.availability.status == "disable") {
              if ($this.currentSizeObj.availability.delivery_days > 1) {
                rezult = $this.txt["dostepny_za"];
              } else if ($this.currentSizeObj.availability.delivery_days <= 1) {
                rezult = $this.txt["dostepny"];
              }
            } else {
              if ($this.currentSizeObj.availability.delivery_days > 1) {
                rezult = $this.txt["wysylka_za"];
              } else if ($this.currentSizeObj.availability.delivery_days <= 1) {
                rezult = $this.txt["wysylka"];
              }
            }
            if ($this.currentSizeObj.availability.hours) {
              rezult +=
                $this.currentSizeObj.availability.hours +
                $this.variety(
                  $this.currentSizeObj.availability.hours,
                  $this.txt["hour"],
                  $this.txt["hours"]
                );
            } else {
              if ($this.currentSizeObj.availability.delivery_days == 0) {
                rezult += $this.txt["status_natychmiast"];
              }
              if ($this.currentSizeObj.availability.delivery_days == "1") {
                rezult += $this.txt["status_24"];
              }
              if ($this.currentSizeObj.availability.delivery_days > "1") {
                rezult +=
                  $this.currentSizeObj.availability.delivery_days +
                  $this.variety(
                    $this.currentSizeObj.availability.delivery_days,
                    $this.txt["day"],
                    $this.txt["days"]
                  );
              }
            }
            if ($this.currentSizeObj.availability_total) {
              if (
                parseInt(
                  $this.currentSizeObj.availability_total.delivery_days
                ) == 0 &&
                parseInt(
                  $this.currentSizeObj.availability_total.delivery_hours
                ) > 0
              ) {
                rezult +=
                  $this.txt["wysylka_total_begin"] +
                  $this.currentSizeObj.availability_total.total_hours +
                  $this.variety(
                    $this.currentSizeObj.availability_total.total_hours,
                    $this.txt["hour"],
                    $this.txt["hours"]
                  ) +
                  $this.txt["wysylka_total_end"];
              } else if (
                parseInt(
                  $this.currentSizeObj.availability_total.delivery_days
                ) == 1
              ) {
                rezult +=
                  $this.txt["wysylka_total_begin"] +
                  $this.txt["status_24"] +
                  $this.txt["wysylka_total_end"];
              } else if (
                parseInt(
                  $this.currentSizeObj.availability_total.delivery_days
                ) > 1
              ) {
                rezult +=
                  $this.txt["wysylka_total_begin"] +
                  $this.variety(
                    $this.currentSizeObj.availability_total.delivery_days,
                    $this.txt["day"],
                    $this.txt["days"]
                  ) +
                  $this.txt["days"] +
                  $this.txt["wysylka_total_end"];
              }
            }
          }
          $this.shippingTimeBuffer.push({
            key: productParamsMD5,
            value: rezult,
          });
          resolve(rezult);
        });
      });
    }
  };
  this.start = function () {
    this.options["beginStartFunction"]();
    window.projectorv3_disable_ajax = projectorv3_disable_ajax || 1;
    if (!this.currentSizeObj.type) return false;
    var $this = this;
    var prepareDataOnStart = function () {
      if (product_data.sizes["uniw"] || product_data.sizes["onesize"]) {
        $this.setCurrentSizeObj("uniw");
      }
      $("#" + $this.prefix + "form").attr(
        "class",
        $this.curr_class + " " + $this.currentSizeObj.availability.status
      );
      $this.configObj.displaySize =
        $this.currentSizeObj.type == "onesize" ? false : true;
      if ($this.currentSizeObj.availability) {
        $this.configObj.disableNumberInput =
          $this.currentSizeObj.availability.status == "disable" ? true : false;
      }
      $this.configObj.disableBuyButton = false;
      if (
        $this.currentSizeObj.availability.status == "disable" ||
        $this.currentSizeObj.phone_price == "true"
      ) {
        $this.configObj.disableBuyButton = true;
      }
      $this.configObj.displayBuySection = $this.currentSizeObj.gratis
        ? true
        : false;
      var numberInput = $this.currentSizeObj.unit_sellby + "";
      if ($("input#" + $this.options["contenersPrefix"] + "number").size()) {
        numberInput = $(
          "input#" + $this.options["contenersPrefix"] + "number"
        ).val();
      }
      $this.configObj.valueOfNumberInput = $this.sellBy(
        $this.currentSizeObj.unit_sellby,
        $this.currentSizeObj.unit_precision,
        numberInput.replace(",", ".")
      );
      if ($this.currentSizeObj.rebateNumber) {
        $this.configObj.rabatIndex = -1;
        $this.configObj.rabatIndex_last = -1;
        for (i in $this.currentSizeObj.rebateNumber) {
          var threshold_end = $this.currentSizeObj.rebateNumber[i].threshold_end
            ? $this.currentSizeObj.rebateNumber[i].threshold_end
            : $this.configObj.valueOfNumberInput;
          if (
            parseFloat($this.configObj.valueOfNumberInput) >=
              parseFloat($this.currentSizeObj.rebateNumber[i].threshold) &&
            parseFloat($this.configObj.valueOfNumberInput) <=
              parseFloat(threshold_end)
          ) {
            $this.configObj.rabatIndex = i;
            $this.configObj.rabatIndex_last = i;
            if (
              !$this.currentSizeObj.rebateNumber[1 * i + 1] ||
              parseFloat($this.configObj.valueOfNumberInput) <
                parseFloat(
                  $this.currentSizeObj.rebateNumber[1 * i + 1].threshold
                )
            ) {
              break;
            }
          } else if (
            parseFloat($this.configObj.valueOfNumberInput) >=
            parseFloat($this.currentSizeObj.rebateNumber[i].threshold)
          ) {
            $this.configObj.rabatIndex_last = i;
          }
        }
      }
      if ($this.configObj.rabatIndex && $this.configObj.rabatIndex != -1) {
        $this.configObj.rebateNumber =
          $this.currentSizeObj.rebateNumber[$this.configObj.rabatIndex];
        $this.configObj.rebateNumberNext = $this.configObj.rebateNumber;
      } else {
        $this.configObj.rebateNumber = false;
      }
      if (
        $this.currentSizeObj.rebateNumber &&
        $this.currentSizeObj.rebateNumber[
          1 * $this.configObj.rabatIndex + 1 * 1
        ]
      ) {
        $this.configObj.rebateNumberNext =
          $this.currentSizeObj.rebateNumber[
            1 * $this.configObj.rabatIndex + 1 * 1
          ];
      }
      if (
        $this.configObj.rabatIndex_last &&
        $this.currentSizeObj.rebateNumber[
          1 * $this.configObj.rabatIndex_last + 1 * 1
        ]
      ) {
        $this.configObj.rebateNumberNext =
          $this.currentSizeObj.rebateNumber[
            1 * $this.configObj.rabatIndex_last + 1 * 1
          ];
      }
      if (
        $this.currentSizeObj.type == "onesize" ||
        $this.currentSizeObj.type == "uniw"
      ) {
        $("#" + $this.prefix + "sizes_cont").hide();
      } else {
        $("#" + $this.prefix + "sizes_cont").show();
      }
      $this.status_description();
      if ($("#" + $this.prefix + "amount").size()) {
        $("#" + $this.prefix + "amount").show();
        var _amount = $this.currentSizeObj.amount;
        if (_amount == 0) {
          $("#" + $this.prefix + "amount").hide();
        } else if (_amount == -1) {
          _amount = $this.txt["infinity"];
          if ($this.txt["infinity"] == "")
            $("#" + $this.prefix + "amount").hide();
        }
        if (_amount == 1) {
          _amount = _amount + " " + $this.currentSizeObj.unit;
        } else if (_amount > 1) {
          _amount = _amount + " " + $this.currentSizeObj.unit_plural;
        }
        $("#" + $this.prefix + "amount").html(
          $this.txt["amount"].format(_amount)
        );
      }
      if (
        $this.currentSizeObj.product_type &&
        $this.currentSizeObj.product_type == "product_virtual"
      ) {
        $("#" + $this.prefix + "amount").hide();
      }
      if ($this.currentSizeObj.availability.visible == "n") {
        $("#" + $this.prefix + "status_description_wrapper").hide();
      } else if (
        $this.currentSizeObj &&
        $this.currentSizeObj.availability.status_description
      ) {
        $("#" + $this.prefix + "status_description_wrapper").show();
      }
      if (
        $this.currentSizeObj.availability.delivery_days_undefined == "true" &&
        $this.currentSizeObj.delivery.undefined == "true"
      ) {
        $("#" + $this.prefix + "delivery_wrapper").hide();
      } else {
        $("#" + $this.prefix + "delivery_wrapper").show();
      }
      $("#" + $this.prefix + "delivery_days").hide();
      if (projectorv3_disable_ajax && projectorv3_disable_ajax == 0) {
        $("#" + $this.prefix + "delivery_days").hide();
        if (
          $this.currentSizeObj &&
          $this.currentSizeObj.availability.delivery_days_undefined != "true"
        ) {
          if ($this.shippingTime() != "") {
            $("#" + $this.prefix + "delivery_days")
              .show()
              .html($this.shippingTime());
          }
        }
      } else {
        if (
          $this.currentSizeObj.availability.delivery_days_undefined != "true"
        ) {
          var $$this = $this;
          clearTimeout($$this.timeHandle);
          $("#" + $$this.prefix + "delivery_days")
            .parents(".product_section")
            .addClass("loading");
          $$this.timeHandle = setTimeout(function () {
            if (product_data.product_type == "product_bundle") {
              var array = $("#projector_form").serializeArray();
              var urlObj = {};
              urlObj["bundleParts"] = {};
              var bundled_size = [];
              for (i = 0; i < array.length; i++) {
                var value =
                  array[i].value == "onesize" ? "uniw" : array[i].value;
                if (array[i].name.indexOf("bundled_size") == -1) {
                  urlObj[array[i].name] = value;
                } else {
                  eval(array[i].name + '="' + value + '"');
                }
              }
              urlObj["bundleParts"] = bundled_size;
              var id = urlObj.product;
              var size = urlObj.size;
              var quantity = urlObj.number ? urlObj.number : 1;
              var url = [];
              var prefix = "products[" + id + "][" + size + "]";
              url.push(prefix + "[quantity]=" + quantity);
              var counter = 0;
              if (urlObj["bundleParts"].length) {
                for (i in urlObj["bundleParts"]) {
                  url.push(
                    prefix + "[bundleParts][" + counter + "][product]=" + i
                  );
                  url.push(
                    prefix +
                      "[bundleParts][" +
                      counter +
                      "][size]=" +
                      urlObj["bundleParts"][i]
                  );
                  counter++;
                }
              }
              $$this
                .shippingTime(
                  "/ajax/get-deliveries.php?mode=productAndBasket&" +
                    url.join("&")
                )
                .then(function (shipping_time) {
                  if (shipping_time != "") {
                    $("#" + $$this.prefix + "delivery_days")
                      .show()
                      .html(shipping_time);
                    $("#" + $$this.prefix + "delivery_days")
                      .parents(".product_section")
                      .removeClass("loading");
                  }
                });
            } else {
              $$this.shippingTime().then(function (shipping_time) {
                if (shipping_time != "") {
                  $("#" + $$this.prefix + "delivery_days")
                    .show()
                    .html(shipping_time);
                  $("#" + $$this.prefix + "delivery_days")
                    .parents(".product_section")
                    .removeClass("loading");
                }
              });
            }
          }, 50);
        }
      }
      $("#" + $this.prefix + "shipping_unknown").hide();
      if (
        ($this.currentSizeObj.product_type &&
          $this.currentSizeObj.product_type == "product_virtual") ||
        $this.currentSizeObj.availability.status == "disable"
      ) {
        $("#" + $this.prefix + "shipping_info").hide();
      } else {
        $("#" + $this.prefix + "shipping_info").show();
      }
      if (
        $this.currentSizeObj.delay_time &&
        $this.currentSizeObj.delay_time.unknown_delivery_time == "true" &&
        $this.currentSizeObj.availability.status == "order"
      ) {
        $("#" + $this.prefix + "shipping_info").hide();
        $("#" + $this.prefix + "shipping_unknown").show();
      }
      if ($this.currentSizeObj.delivery.shipping == 0) {
        $("#" + $this.prefix + "shipping").html($this.txt["gratis"]);
      } else {
        $("#" + $this.prefix + "shipping").html(
          $this.txt["koszt_od"] +
            $this.formatPrice(
              $this.currentSizeObj.delivery.shipping,
              P_CALCULATE
            )
        );
      }
      if ($this.currentSizeObj.delivery.undefined == "true") {
        $("#" + $this.prefix + "shipping").hide();
      } else {
        $("#" + $this.prefix + "shipping").show();
      }
      if ($this.currentSizeObj.price.advanceprice) {
        $("#" + $this.prefix + "advanceprice_wrapper").show();
        $("#" + $this.prefix + "advanceprice").html(
          $this.formatPrice(
            $this.currentSizeObj.price.advanceprice,
            P_CALCULATE
          )
        );
      } else {
        $("#" + $this.prefix + "advanceprice_wrapper").hide();
      }
      $("#" + $this.prefix + "sellbyprice_wrapper").show();
      $("#" + $this.prefix + "sellbyprice").html(
        $this.currentSizeObj.price.price_formatted
      );
      $("#" + $this.prefix + "prices_wrapper").hide();
      if ($this.currentSizeObj.price.srp) {
        if (
          $this.currentSizeObj.price.srp > 0 &&
          $this.currentSizeObj.price.srp != $this.currentSizeObj.price.value
        ) {
          $("#" + $this.prefix + "price_srp_wrapper").show();
          $("#" + $this.prefix + "prices_wrapper").show();
          $("#" + $this.prefix + "price_srp").html(
            $this.formatPrice($this.currentSizeObj.price.srp, P_CALCULATE)
          );
        } else {
          $("#" + $this.prefix + "price_srp_wrapper").hide();
        }
      } else {
        $("#" + $this.prefix + "price_srp_wrapper").hide();
      }
      if ($this.currentSizeObj.price.maxprice) {
        if ($this.currentSizeObj.price.maxprice > 0) {
          $("#" + $this.prefix + "price_maxprice").show();
          $("#" + $this.prefix + "price_maxprice").html(
            $this.formatPrice($this.currentSizeObj.price.maxprice, P_CALCULATE)
          );
        } else {
          $("#" + $this.prefix + "price_maxprice").hide();
        }
      } else {
        $("#" + $this.prefix + "price_maxprice").hide();
      }
      if ($this.currentSizeObj.price.price_net) {
        if ($this.currentSizeObj.price.price_net > 0) {
          $("#" + $this.prefix + "price_net_wrapper").show();
          $("#" + $this.prefix + "price_net").show();
          $("#" + $this.prefix + "price_net").html(
            $this.formatPrice($this.currentSizeObj.price.price_net, P_CALCULATE)
          );
        } else {
          $("#" + $this.prefix + "price_net_wrapper").hide();
          $("#" + $this.prefix + "price_net").hide();
        }
      } else {
        $("#" + $this.prefix + "price_net_wrapper").hide();
        $("#" + $this.prefix + "price_net").hide();
      }
      if ($this.currentSizeObj.phone_price == "true") {
        if ($this.currentSizeObj.price.points > 0) {
          $("#" + $this.prefix + "price_wrapper").hide();
        } else {
          $("#" + $this.prefix + "prices_wrapper").show();
          if (
            $this.currentSizeObj.availability.status_gfx_tel &&
            $this.currentSizeObj.availability.status_gfx_tel != ""
          ) {
            $("#" + $this.prefix + "price_value").html(
              '<a target="_blank" href="' +
                $this.options["contact_link"] +
                '"><img src="' +
                $this.currentSizeObj.availability.status_gfx_tel +
                '"/></a>'
            );
          } else {
            $("#" + $this.prefix + "price_value").html(
              '<a target="_blank" href="' +
                $this.options["contact_link"] +
                '">' +
                $this.currentSizeObj.availability.status_description_tel +
                "</a>"
            );
          }
        }
      } else {
        $("#" + $this.prefix + "prices_wrapper").show();
        $("#" + $this.prefix + "price_value").html(
          $this.formatPrice(
            $this.currentSizeObj.price.value,
            true,
            false,
            false
          )
        );
      }
      if ($this.options["hide_unit"]) {
        $(
          "#" +
            $this.prefix +
            "price_unit_sellby, #" +
            $this.prefix +
            "price_unit"
        ).hide();
      } else {
        if ($this.configObj.valueOfNumberInput == 1) {
          $("#" + $this.prefix + "price_unit_sellby")
            .hide()
            .html($this.configObj.valueOfNumberInput);
          $("#" + $this.prefix + "price_unit").html($this.currentSizeObj.unit);
        } else {
          $("#" + $this.prefix + "price_unit_sellby")
            .show()
            .html($this.configObj.valueOfNumberInput);
          $("#" + $this.prefix + "price_unit").html(
            $this.currentSizeObj.unit_plural
              ? $this.currentSizeObj.unit_plural
              : $this.currentSizeObj.unit
          );
        }
      }
      if (
        $this.currentSizeObj.bundle_price ||
        $this.currentSizeObj.price.yousave_percent
      ) {
        $("#" + $this.prefix + "yousave_bundle_wrapper").show();
      } else {
        $("#" + $this.prefix + "yousave_bundle_wrapper").hide();
      }
      yousaveTmp = $this.currentSizeObj.price.yousave;
      yousave_percentTmp = $this.currentSizeObj.price.yousave_percent;
      if (
        $this.currentSizeObj.phone_price != "true" &&
        $this.currentSizeObj.bundle_price &&
        $this.currentSizeObj.bundle_price.amount_diff_gross > 0
      ) {
        $("#" + $this.prefix + "price_yousave")
          .show()
          .html(
            $this.txt["oszczedzasz"] +
              $this.currentSizeObj.bundle_price.percent_diff +
              $this.txt["taniej"] +
              $this.formatPrice(
                $this.currentSizeObj.bundle_price.amount_diff_gross,
                P_CALCULATE
              ) +
              $this.txt["wzestawie"]
          );
      } else if ($this.currentSizeObj.phone_price != "true" && yousaveTmp) {
        $("#" + $this.prefix + "price_yousave")
          .show()
          .html(
            $this.txt["oszczedzasz"] +
              yousave_percentTmp +
              $this.txt["taniej"] +
              $this.formatPrice(yousaveTmp, P_CALCULATE) +
              $this.txt["nawias_end"]
          );
      } else {
        $("#" + $this.prefix + "price_yousave").hide();
      }
      $("#" + $this.prefix + "price_points_wrapper").hide();
      if ($this.currentSizeObj.price.points > 0) {
        $("#" + $this.prefix + "price_points")
          .show()
          .html(
            $this.formatPrice(
              $this.currentSizeObj.price.points,
              P_CALCULATE,
              $this.txt["pkt"]
            )
          );
        $("#" + $this.prefix + "points_wrapper").show();
        $("#" + $this.prefix + "price_points_wrapper").show();
      }
      if ($this.currentSizeObj.price.points_recive > 0) {
        $("#" + $this.prefix + "points_wrapper").show();
        $("#" + $this.prefix + "points_recive_points")
          .show()
          .html(
            $this.formatPrice(
              $this.currentSizeObj.price.points_recive,
              P_CALCULATE,
              $this.txt["pkt"]
            )
          );
        $("#" + $this.prefix + "price_points_recive_wrapper").show();
      } else {
        $("#" + $this.prefix + "price_points_recive_wrapper").hide();
      }
      if ($this.currentSizeObj.for_points == "true") {
        $("#" + $this.prefix + "button_points_basket").show();
      } else {
        $("#" + $this.prefix + "button_points_basket").hide();
      }
      $("#" + $this.prefix + "tell_availability").hide();
      var that = $this;
      if ($this.configObj.addBasketFnBtn) {
        $("#" + $this.prefix + "button_basket").off("click");
        $("#" + $this.prefix + "button_basket")
          .on("click", function () {
            that.configObj.addBasketFnBtn();
            return false;
          })
          .removeClass("disabled");
      } else if ($this.configObj.disableBuyButtonTXT) {
        var txtAlert = $this.configObj.disableBuyButtonTXT;
        $("#" + $this.prefix + "button_basket")
          .on("click", function () {
            classObj.alert(txtAlert);
            return false;
          })
          .addClass("disabled");
        $("#" + $this.prefix + "number").prop("disabled", true);
      } else if ($this.currentSizeObj.availability.status == "disable") {
        $("#" + $this.prefix + "button_points_basket").hide();
        $("#" + $this.prefix + "button_basket")
          .on("click", function () {
            classObj.alert(classObj.txt["niedostepny"]);
            return false;
          })
          .addClass("disabled");
        $("#" + $this.prefix + "number").prop("disabled", true);
        $("#" + $this.prefix + "tell_availability").show();
      } else if (
        $this.currentSizeObj.phone_price == "true" &&
        $this.currentSizeObj.price.points > 0
      ) {
        $("#" + $this.prefix + "button_basket")
          .on("click", function () {
            classObj.alert(classObj.txt["tylko_punkty"]);
            return false;
          })
          .addClass("disabled");
        $("#" + $this.prefix + "number").prop("disabled", true);
      } else if ($this.currentSizeObj.phone_price == "true") {
        $("#" + $this.prefix + "number").prop("disabled", false);
        $("#" + $this.prefix + "button_basket")
          .on("click", function () {
            classObj.alert(classObj.txt["tylkotel"]);
            return false;
          })
          .addClass("disabled");
        $("#" + $this.prefix + "number").prop("disabled", true);
      } else {
        $("#" + $this.prefix + "button_basket")
          .off("click")
          .removeClass("disabled");
        $("#" + $this.prefix + "number").prop("disabled", false);
      }
      if ($this.currentSizeObj.gratis) {
        $("#" + $this.prefix + "buy_section").hide();
        $("#" + $this.prefix + "button_points_basket").hide();
      }
      if (
        $this.currentSizeObj.price.basket_enable &&
        $this.currentSizeObj.price.basket_enable == "y" &&
        $this.currentSizeObj.phone_price == "true"
      ) {
        $("#" + $this.prefix + "button_basket")
          .off("click")
          .removeClass("disabled");
        $("#" + $this.prefix + "number").prop("disabled", false);
        $("#" + $this.prefix + "price_value").html(
          '<span class="' +
            $this.prefix +
            '_price_gratis">' +
            $this.txt["gratis_produkt"] +
            "</span>"
        );
      }
      $("input#" + $this.options["contenersPrefix"] + "number").val(
        $this.configObj.valueOfNumberInput
      );
      if ($this.configObj.rebateNumberNext) {
        $("#" + $this.prefix + "product_rebatenumber_value").text(
          ($this.configObj.rebateNumberNext.value + $this.txt["proc"]).replace(
            /\.00/gi,
            ""
          )
        );
        $("#" + $this.prefix + "product_rebatenumber_threshold").text(
          $this.configObj.rebateNumberNext.threshold.replace(/\.00/gi, "")
        );
      }
      $this.firstRun = false;
      $this.options["endStartFunction"]();
      return true;
    };
    if (product_data.sizes[$this.currentSizeObj.type].availability) {
      prepareDataOnStart();
    } else {
      if (product_data.sizes) {
        if (product_data.product_type != "product_bundle") {
          $.getJSON(
            "/ajax/projector.php?action=get&product=" +
              product_data.product_id +
              "&size=" +
              $this.currentSizeObj.type +
              "&get=sizeavailability,sizedelivery,sizeprices",
            function (json) {
              product_data.sizes[$this.currentSizeObj.type].availability =
                json.sizeavailability;
              product_data.sizes[$this.currentSizeObj.type].delivery =
                json.sizedelivery;
              product_data.sizes[$this.currentSizeObj.type].price =
                json.sizeprices;
              product_data.sizes[$this.currentSizeObj.type].delay_time =
                json.sizeavailability.delay_time;
              prepareDataOnStart();
            }
          );
        } else if (
          product_data.product_type == "product_bundle" &&
          app_shop.fn.update_bundle
        )
          app_shop.fn.update_bundle();
      }
    }
  };
  this.liczProcent = function (n, p) {
    n = parseFloat(n);
    p = parseFloat(p);
    return n - n * (p / 100);
  };
  this.addAction = function (id, action, inner) {
    if (!this.actions[id]) {
      this.actions[id] = {};
    }
    this.actions[id][action] = inner;
  };
  this.getConfigObj = function () {
    return this.configObj;
  };
  this.alert = function (msg) {
    Alertek.show_alert(msg);
  };
  this.setCurrentSizeObj = function (sizeType) {
    if (projectorv3_disable_ajax && projectorv3_disable_ajax == 0) {
      if (product_data.sizes[sizeType]) {
        this.currentSizeObj = product_data.sizes[sizeType];
        this.currentSizeObj.product_type = product_data.product_type;
        this.currentSizeObj.currency = product_data.currency;
        this.currentSizeObj.unit = product_data.unit;
        this.currentSizeObj.unit_plural = product_data.unit_plural
          ? product_data.unit_plural
          : "";
        this.currentSizeObj.unit_sellby =
          product_data.unit_sellby != "" ? product_data.unit_sellby : 1;
        this.currentSizeObj.unit_precision =
          product_data.unit_precision != "" ? product_data.unit_precision : 0;
      } else {
        this.errorMsg.push("setCurrentSize no data");
      }
      this.options["endSetCurrentSizeFunction"]();
    } else {
      var $this = this;
      var setSize = function () {
        if (sizeType == "onesize") sizeType = "uniw";
        if (product_data.sizes[sizeType]) {
          $this.currentSizeObj = product_data.sizes[sizeType];
          $this.currentSizeObj.product_type = product_data.product_type;
          $this.currentSizeObj.currency = product_data.currency;
          $this.currentSizeObj.unit = product_data.unit;
          $this.currentSizeObj.unit_plural = product_data.unit_plural
            ? product_data.unit_plural
            : "";
          $this.currentSizeObj.unit_sellby =
            product_data.unit_sellby != "" ? product_data.unit_sellby : 1;
          $this.currentSizeObj.unit_precision =
            product_data.unit_precision != "" ? product_data.unit_precision : 0;
          if (product_data.for_points)
            $this.currentSizeObj.for_points = product_data.for_points;
        } else {
          $this.errorMsg.push("setCurrentSize no data");
        }
      };
      if (product_data.sizes) {
        setSize();
      } else
        $.getJSON(
          "/ajax/projector.php?action=get&product=" +
            product_data.product_id +
            "&get=sizes",
          function (json) {
            if (json.sizes) {
              product_data.sizes = {};
              $.each(json.sizes.items, function (key, size) {
                product_data.sizes[size.type] = size;
              });
              setSize();
              $this.start();
            }
          }
        );
      this.options["endSetCurrentSizeFunction"]();
    }
  };
  this.getCurrentSizeObj = function (sizeType) {
    return this.currentSizeObj;
  };
  this.getAjaxProductData = function (product_id) {
    classObj.options["beginGetAjaxProductDataFunction"]();
    $.ajax({
      type: "GET",
      timeout: this.timeoutAjax,
      url:
        "/projector.php?product=" +
        product_id +
        "&shop_xml=true&getProductXML=true",
      dataType: "xml",
      success: function (xml) {
        classObj.options["clearXMLGetAjaxProductDataFunction"](xml);
        var newJSONObj = {};
        var productIdTmp = classObj.getAttr($("product:first", xml), "id");
        newJSONObj.currency = shop_currency;
        newJSONObj.product_type = classObj.getAttr(
          $("product:first", xml),
          "product_type"
        );
        newJSONObj.unit = classObj.getAttr(
          $("product sizes_version:first", xml),
          "unit"
        );
        newJSONObj.unit_plural = classObj.getAttr(
          $("product sizes_version:first", xml),
          "unit_plural"
        );
        newJSONObj.unit_sellby = classObj.getAttr(
          $("product sizes_version:first", xml),
          "unit_sellby"
        );
        newJSONObj.unit_precision = classObj.getAttr(
          $("product sizes_version:first", xml),
          "unit_precision"
        );
        newJSONObj.sizes = {};
        $(
          "product versions:first version[id=" + productIdTmp + "] size",
          xml
        ).each(function () {
          newJSONObj.sizes[classObj.getAttr($(this), "type")] = $.xml2json(
            $("<p/>").append($(this)).html()
          );
        });
        product_data = newJSONObj;
        classObj.setCurrentSizeObj(classObj.getIndex(product_data.sizes, 0));
        projectorObj.start();
        classObj.options["endGetAjaxProductDataFunction"]();
      },
      error: function () {},
    });
  };
};
function parseURLParams(url) {
  var params = {};
  var queryStart = url.indexOf("?") + 1;
  var queryEnd = url.indexOf("#") + 1 || url.length + 1;
  var query = url.slice(queryStart, queryEnd - 1);
  if (query === url || query === "") return params;
  var nvPairs = query.replace(/\+/g, " ").split("&");
  for (var i = 0; i < nvPairs.length; i++) {
    var nv = nvPairs[i].split("=");
    var n = decodeURIComponent(nv[0]);
    var v = decodeURIComponent(nv[1]);
    if (!(n in params)) {
      params[n] = [];
    }
    params[n].push(nv.length === 2 ? v : null);
  }
  return params;
}
window["format_price"] = function (price, obj) {
  var obj = obj || {};
  var v = price;
  var m = obj.mask || "###&nbsp;##0,00";
  if (currency_grouping_separator)
    m = m.replace(",", currency_grouping_separator);
  if (currency_decimal_separator)
    m = m.replace(".", currency_decimal_separator);
  var currency = obj.currency || "";
  var currency_space = obj.currency_space ? " " : "";
  var currency_before_price = obj.currency_before_price ? true : false;
  if (!m || isNaN(+v)) {
    return v;
  }
  v = m.charAt(0) == "-" ? -v : +v;
  var isNegative = v < 0 ? (v = -v) : 0;
  var result = m.match(/[^\d\-\+#]/g);
  var Decimal = (result && result[result.length - 1]) || ".";
  var Group = (result && result[1] && result[0]) || ",";
  var m = m.split(Decimal);
  v = v.toFixed(m[1] && m[1].length);
  v = +v + "";
  var pos_trail_zero = m[1] && m[1].lastIndexOf("0");
  var part = v.split(".");
  if (!part[1] || (part[1] && part[1].length <= pos_trail_zero)) {
    v = (+v).toFixed(pos_trail_zero + 1);
  }
  var szSep = m[0].split(Group);
  m[0] = szSep.join("");
  var pos_lead_zero = m[0] && m[0].indexOf("0");
  if (pos_lead_zero > -1) {
    while (part[0].length < m[0].length - pos_lead_zero) {
      part[0] = "0" + part[0];
    }
  } else if (+part[0] == 0) {
    part[0] = "";
  }
  v = v.split(".");
  v[0] = part[0];
  var pos_separator = szSep[1] && szSep[szSep.length - 1].length;
  if (pos_separator) {
    var integer = v[0];
    var str = "";
    var offset = integer.length % pos_separator;
    for (var i = 0, l = integer.length; i < l; i++) {
      str += integer.charAt(i);
      if (!((i - offset + 1) % pos_separator) && i < l - pos_separator) {
        str += Group;
      }
    }
    v[0] = str;
  }
  v[1] = m[1] && v[1] ? Decimal + v[1] : "";
  var price = (isNegative ? "-" : "") + v[0] + v[1];
  price = currency_before_price
    ? currency + currency_space + price
    : price + currency_space + currency;
  return price;
};
+(function ($) {
  "use strict";
  var backdrop = ".dropdown-backdrop";
  var toggle = '[data-toggle="dropdown"]';
  var Dropdown = function (element) {
    $(element).on("click.bs.dropdown", this.toggle);
  };
  Dropdown.VERSION = "3.3.6";
  function getParent($this) {
    var selector = $this.attr("data-target");
    if (!selector) {
      selector = $this.attr("href");
      selector =
        selector &&
        /#[A-Za-z]/.test(selector) &&
        selector.replace(/.*(?=#[^\s]*$)/, "");
    }
    var $parent = selector && $(selector);
    return $parent && $parent.length ? $parent : $this.parent();
  }
  function clearMenus(e) {
    if (e && e.which === 3) return;
    $(backdrop).remove();
    $(toggle).each(function () {
      var $this = $(this);
      var $parent = getParent($this);
      var relatedTarget = { relatedTarget: this };
      if (!$parent.hasClass("open")) return;
      if (
        e &&
        e.type == "click" &&
        /input|textarea/i.test(e.target.tagName) &&
        $.contains($parent[0], e.target)
      )
        return;
      $parent.trigger((e = $.Event("hide.bs.dropdown", relatedTarget)));
      if (e.isDefaultPrevented()) return;
      $this.attr("aria-expanded", "false");
      $parent
        .removeClass("open")
        .trigger($.Event("hidden.bs.dropdown", relatedTarget));
    });
  }
  Dropdown.prototype.toggle = function (e) {
    var $this = $(this);
    if ($this.is(".disabled, :disabled")) return;
    var $parent = getParent($this);
    var isActive = $parent.hasClass("open");
    clearMenus();
    if (!isActive) {
      if (
        "ontouchstart" in document.documentElement &&
        !$parent.closest(".navbar-nav").length
      ) {
        $(document.createElement("div"))
          .addClass("dropdown-backdrop")
          .insertAfter($(this))
          .on("click", clearMenus);
      }
      var relatedTarget = { relatedTarget: this };
      $parent.trigger((e = $.Event("show.bs.dropdown", relatedTarget)));
      if (e.isDefaultPrevented()) return;
      $this.trigger("focus").attr("aria-expanded", "true");
      $parent
        .toggleClass("open")
        .trigger($.Event("shown.bs.dropdown", relatedTarget));
    }
    return false;
  };
  Dropdown.prototype.keydown = function (e) {
    if (
      !/(38|40|27|32)/.test(e.which) ||
      /input|textarea/i.test(e.target.tagName)
    )
      return;
    var $this = $(this);
    e.preventDefault();
    e.stopPropagation();
    if ($this.is(".disabled, :disabled")) return;
    var $parent = getParent($this);
    var isActive = $parent.hasClass("open");
    if ((!isActive && e.which != 27) || (isActive && e.which == 27)) {
      if (e.which == 27) $parent.find(toggle).trigger("focus");
      return $this.trigger("click");
    }
    var desc = " li:not(.disabled):visible a";
    var $items = $parent.find(".dropdown-menu" + desc);
    if (!$items.length) return;
    var index = $items.index(e.target);
    if (e.which == 38 && index > 0) index--;
    if (e.which == 40 && index < $items.length - 1) index++;
    if (!~index) index = 0;
    $items.eq(index).trigger("focus");
  };
  function Plugin(option) {
    return this.each(function () {
      var $this = $(this);
      var data = $this.data("bs.dropdown");
      if (!data) $this.data("bs.dropdown", (data = new Dropdown(this)));
      if (typeof option == "string") data[option].call($this);
    });
  }
  var old = $.fn.dropdown;
  $.fn.dropdown = Plugin;
  $.fn.dropdown.Constructor = Dropdown;
  $.fn.dropdown.noConflict = function () {
    $.fn.dropdown = old;
    return this;
  };
  $(document)
    .on("click.bs.dropdown.data-api", clearMenus)
    .on("click.bs.dropdown.data-api", ".dropdown form", function (e) {
      e.stopPropagation();
    })
    .on("click.bs.dropdown.data-api", toggle, Dropdown.prototype.toggle)
    .on("keydown.bs.dropdown.data-api", toggle, Dropdown.prototype.keydown)
    .on(
      "keydown.bs.dropdown.data-api",
      ".dropdown-menu",
      Dropdown.prototype.keydown
    );
})(jQuery);
!(function (e, n) {
  "object" == typeof exports && "undefined" != typeof module
    ? n()
    : "function" == typeof define && define.amd
    ? define(n)
    : n();
})(0, function () {
  "use strict";
  function e(e) {
    var n = this.constructor;
    return this.then(
      function (t) {
        return n.resolve(e()).then(function () {
          return t;
        });
      },
      function (t) {
        return n.resolve(e()).then(function () {
          return n.reject(t);
        });
      }
    );
  }
  function n() {}
  function t(e) {
    if (!(this instanceof t))
      throw new TypeError("Promises must be constructed via new");
    if ("function" != typeof e) throw new TypeError("not a function");
    (this._state = 0),
      (this._handled = !1),
      (this._value = undefined),
      (this._deferreds = []),
      u(e, this);
  }
  function o(e, n) {
    for (; 3 === e._state; ) e = e._value;
    0 !== e._state
      ? ((e._handled = !0),
        t._immediateFn(function () {
          var t = 1 === e._state ? n.onFulfilled : n.onRejected;
          if (null !== t) {
            var o;
            try {
              o = t(e._value);
            } catch (f) {
              return void i(n.promise, f);
            }
            r(n.promise, o);
          } else (1 === e._state ? r : i)(n.promise, e._value);
        }))
      : e._deferreds.push(n);
  }
  function r(e, n) {
    try {
      if (n === e)
        throw new TypeError("A promise cannot be resolved with itself.");
      if (n && ("object" == typeof n || "function" == typeof n)) {
        var o = n.then;
        if (n instanceof t) return (e._state = 3), (e._value = n), void f(e);
        if ("function" == typeof o)
          return void u(
            (function (e, n) {
              return function () {
                e.apply(n, arguments);
              };
            })(o, n),
            e
          );
      }
      (e._state = 1), (e._value = n), f(e);
    } catch (r) {
      i(e, r);
    }
  }
  function i(e, n) {
    (e._state = 2), (e._value = n), f(e);
  }
  function f(e) {
    2 === e._state &&
      0 === e._deferreds.length &&
      t._immediateFn(function () {
        e._handled || t._unhandledRejectionFn(e._value);
      });
    for (var n = 0, r = e._deferreds.length; r > n; n++) o(e, e._deferreds[n]);
    e._deferreds = null;
  }
  function u(e, n) {
    var t = !1;
    try {
      e(
        function (e) {
          t || ((t = !0), r(n, e));
        },
        function (e) {
          t || ((t = !0), i(n, e));
        }
      );
    } catch (o) {
      if (t) return;
      (t = !0), i(n, o);
    }
  }
  var c = setTimeout;
  (t.prototype["catch"] = function (e) {
    return this.then(null, e);
  }),
    (t.prototype.then = function (e, t) {
      var r = new this.constructor(n);
      return (
        o(
          this,
          new (function (e, n, t) {
            (this.onFulfilled = "function" == typeof e ? e : null),
              (this.onRejected = "function" == typeof n ? n : null),
              (this.promise = t);
          })(e, t, r)
        ),
        r
      );
    }),
    (t.prototype["finally"] = e),
    (t.all = function (e) {
      return new t(function (n, t) {
        function o(e, f) {
          try {
            if (f && ("object" == typeof f || "function" == typeof f)) {
              var u = f.then;
              if ("function" == typeof u)
                return void u.call(
                  f,
                  function (n) {
                    o(e, n);
                  },
                  t
                );
            }
            (r[e] = f), 0 == --i && n(r);
          } catch (c) {
            t(c);
          }
        }
        if (!e || "undefined" == typeof e.length)
          throw new TypeError("Promise.all accepts an array");
        var r = Array.prototype.slice.call(e);
        if (0 === r.length) return n([]);
        for (var i = r.length, f = 0; r.length > f; f++) o(f, r[f]);
      });
    }),
    (t.resolve = function (e) {
      return e && "object" == typeof e && e.constructor === t
        ? e
        : new t(function (n) {
            n(e);
          });
    }),
    (t.reject = function (e) {
      return new t(function (n, t) {
        t(e);
      });
    }),
    (t.race = function (e) {
      return new t(function (n, t) {
        for (var o = 0, r = e.length; r > o; o++) e[o].then(n, t);
      });
    }),
    (t._immediateFn =
      ("function" == typeof setImmediate &&
        function (e) {
          setImmediate(e);
        }) ||
      function (e) {
        c(e, 0);
      }),
    (t._unhandledRejectionFn = function (e) {
      void 0 !== console &&
        console &&
        console.warn("Possible Unhandled Promise Rejection:", e);
    });
  var l = (function () {
    if ("undefined" != typeof self) return self;
    if ("undefined" != typeof window) return window;
    if ("undefined" != typeof global) return global;
    throw Error("unable to locate global object");
  })();
  "Promise" in l
    ? l.Promise.prototype["finally"] || (l.Promise.prototype["finally"] = e)
    : (l.Promise = t);
});
app_shop.txt.txt_65642_1 = "Generowanie banera się nie powiodło";
$(document).ready(function () {
  $("input.affiliate_products_link").click(function () {
    $(this).val("");
  });
  $(".js_type").click(function () {
    type = $(this).val();
    if (type == "cat") {
      $("#categories").css("display", "block");
      $("#products").css("display", "none");
      $("#affiliate_ilosc_produktow").css("display", "");
      $("#affiliate_uklad_produktow").css("display", "");
      firm = $("#firm").val();
      cat = $("cat").val();
    } else if (type == "product") {
      $("#categories").css("display", "none");
      $("#products").css("display", "block");
      $("#affiliate_ilosc_produktow").css("display", "none");
      $("#affiliate_uklad_produktow").css("display", "none");
    } else {
      $("#categories").css("display", "none");
      $("#products").css("display", "none");
      $("#affiliate_ilosc_produktow").css("display", "");
      $("#affiliate_uklad_produktow").css("display", "");
    }
  });
  $(".border_color").click(function () {
    if ($(this).val() == "tak") {
      $("#border_tr").css("display", "");
    } else {
      $("#border_tr").css("display", "none");
    }
  });
  $(".background_color").click(function () {
    if ($(this).val() == "tak") {
      $("#background_tr").css("display", "");
    } else {
      $("#background_tr").css("display", "none");
    }
  });
});
app_shop.run(
  function () {
    var urlSearch = location.search;
    if (urlSearch.indexOf("php") > -1) {
      $("#sprawdzenie_pr").click(function () {
        var _data = $("form#affiliate_form_js").serialize();
        $.ajax({
          url: "/ajax/affiliate-generator.php?source_code_type=PHP&spr=t",
          type: "post",
          data: _data,
          beforeSend: function () {
            $("#content").addClass("load-content");
          },
          success: function (data) {
            var result = data;
            if (result == '"exist"') {
              $("#affiliate_resources_ok").css("display", "block");
              $("#affiliate_resources_none").css("display", "none");
            } else if (result == "none") {
              $("#affiliate_resources_ok").css("display", "none");
              $("#affiliate_resources_none").css("display", "block");
            }
            $("#content").removeClass("load-content");
          },
          error: function () {
            Alertek.show_alert(app_shop.txt.txt_65642_1);
            $("#content").removeClass("load-content");
          },
        });
        return false;
      });
      $("#podglad_button").click(function () {
        var _data = $("form#affiliate_form_js").serialize();
        $.ajax({
          url: "/ajax/affiliate-generator.php?source_code_type=PHP",
          type: "post",
          data: _data,
          beforeSend: function () {
            $("#content").addClass("load-content");
          },
          success: function (data) {
            $(".podglad").html(data);
            $("#content").removeClass("load-content");
          },
          error: function () {
            Alertek.show_alert(app_shop.txt.txt_65642_1);
            $("#content").removeClass("load-content");
          },
        });
        return false;
      });
      $("#affiliate_php_generate").click(function () {
        var _data = $("form#affiliate_form_js").serialize();
        $.ajax({
          url: "/ajax/affiliate-generator.php?source_code_type=PHP&get=t",
          type: "post",
          data: _data,
          beforeSend: function () {
            $("#content").addClass("load-content");
          },
          success: function (data) {
            data = data.replace(/\\/g, "");
            $("#php_output").text(data).css("display", "block");
            $("#content").removeClass("load-content");
          },
          error: function () {
            Alertek.show_alert(app_shop.txt.txt_65642_1);
            $("#content").removeClass("load-content");
          },
        });
        return false;
      });
    }
    if (urlSearch.indexOf("js") > -1) {
      $("#sprawdzenie_pr").click(function () {
        var _data = $("form#affiliate_form_js").serialize();
        $.ajax({
          url: "/ajax/affiliate-generator.php?source_code_type=JS&spr=t",
          type: "post",
          data: _data,
          beforeSend: function () {
            $("#content").addClass("load-content");
          },
          success: function (data) {
            var result = data;
            if (result == '"exist"') {
              $("#affiliate_resources_ok").css("display", "block");
              $("#affiliate_resources_none").css("display", "none");
            } else if (result == "none") {
              $("#affiliate_resources_ok").css("display", "none");
              $("#affiliate_resources_none").css("display", "block");
            }
            $("#content").removeClass("load-content");
          },
          error: function () {
            Alertek.show_alert(app_shop.txt.txt_65642_1);
            $("#content").removeClass("load-content");
          },
        });
        return false;
      });
      $("#podglad_button").click(function () {
        var _data = $("form#affiliate_form_js").serialize();
        $.ajax({
          url: "/ajax/affiliate-generator.php?source_code_type=JS",
          type: "post",
          data: _data,
          beforeSend: function () {
            $("#content").addClass("load-content");
          },
          success: function (data) {
            $(".podglad").html(data);
            $("#content").removeClass("load-content");
          },
          error: function () {
            Alertek.show_alert(app_shop.txt.txt_65642_1);
            $("#content").removeClass("load-content");
          },
        });
        return false;
      });
      $("#affiliate_js_generate").click(function () {
        var _data = $("form#affiliate_form_js").serialize();
        $.ajax({
          url: "/ajax/affiliate-generator.php?source_code_type=JS&get=t",
          type: "post",
          data: _data,
          beforeSend: function () {
            $("#content").addClass("load-content");
          },
          success: function (data) {
            data = data.replace(/\\/g, "");
            $("#output").text(data);
            $("#content").removeClass("load-content");
          },
          error: function () {
            Alertek.show_alert(app_shop.txt.txt_65642_1);
            $("#content").removeClass("load-content");
          },
        });
        return false;
      });
    }
  },
  "all",
  ".affiliate-generator_page"
);
var promoCodes_txt = [];
("");
promoCodes_txt["default_text"] = "Kliknij, aby aktywować kod: %s";
promoCodes_txt["default_text_size"] = "14";
promoCodes_txt["code_for_shop"] = "Kod dla sklepu";
promoCodes_txt["activate_code"] = "Aktywuj kod rabatowy";
promoCodes_txt["generated_code"] = "Wygenerowany kod";
promoCodes_txt["generated_code_desc"] =
  "Poniższy kod możesz skopiować i wkleić na swojej stronie";
function generate(affiliate, type) {
  var link = $("#affiliate_link").val();
  var shop_url = $("#shop_url").val();
  var match = link.match(/\?/);
  if (match) {
    var affiliate_name = "&affiliate";
  } else {
    var affiliate_name = "?affiliate";
  }
  if (type == "link_url") {
    $("#html_output").val(link + affiliate_name + "=" + affiliate);
  } else if (type == "link_html") {
    var link_name = $("#affiliate_link_name").val();
    $("#html_output").val(
      '<a target="_blank" href="' +
        link +
        affiliate_name +
        "=" +
        affiliate +
        '">' +
        link_name +
        "</a>"
    );
  } else if (type == "html") {
    var elements = $(".affilate_html_banners");
    for (var i = 0; i < elements.length; i++) {
      if (elements[i].type == "radio" && elements[i].checked) {
        var img_url = elements[i].value;
        var temp = img_url.split(".");
        temp.reverse();
        var file_type = temp[0];
        var height = $("#height_" + i + "").val();
        var width = $("#width_" + i + "").val();
        if (file_type == "swf") {
          var output =
            '<object id="linkicon" type="application/x-shockwave-flash" data="' +
            shop_url +
            img_url +
            '" width="' +
            width +
            '" height="' +
            height +
            '"><param name="flashvars" value="clickTag=' +
            link +
            affiliate_name +
            "%3D" +
            affiliate +
            '%26affsource%3Dflash%26flash%3Dtrue" /><param name="movie" value="' +
            shop_url +
            img_url +
            '" /><param name="bgcolor" value="#FFFFFF" /><param name="WMode" value="Opaque" /><embed src="' +
            shop_url +
            img_url +
            '" quality=high bgcolor=#ffffff width="' +
            width +
            '" height="' +
            height +
            '" name="baner" align="" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" flashvars="clickTag=' +
            link +
            affiliate_name +
            "%3D" +
            affiliate +
            '%26affsource%3Dflash%26flash%3Dtrue"></embed></object>';
        } else {
          var output =
            '<a target="_blank" href="' +
            link +
            affiliate_name +
            "=" +
            affiliate +
            '&banner=true"><img src="' +
            shop_url +
            img_url +
            '"/></a>';
        }
      }
    }
    document.getElementById("html_output").value = output;
  }
}
$(document).ready(function () {
  $("#affiliate_resources_submit").click(function () {
    if (
      parseFloat($("#affiliate_max").val()) <
      parseFloat($("#affiliate_resources_kwota1").val())
    ) {
      $("#affiliate_warning1").css("display", "block");
      $("#affiliate_warning2").css("display", "none");
      return false;
    }
    if (
      parseFloat($("#affiliate_min").val()) >
      parseFloat($("#affiliate_resources_kwota1").val())
    ) {
      $("#affiliate_warning2").css("display", "block");
      $("#affiliate_warning1").css("display", "none");
      return false;
    }
  });
});
$(function () {
  $("div.prodl_comment_right ol a.previewFile").each(function () {
    var limit = 26;
    var link = $(this).text();
    if (link.length >= limit)
      if (link.indexOf(".") > 0) {
        $(this).text(
          link.substring(
            0,
            limit < link.lastIndexOf(".") ? limit - 6 : link.indexOf(".") - 6
          ) +
            "[...]." +
            link.split(".").pop()
        );
      } else {
        $(this).text(link.substring(0, limit));
      }
  });
  $("a.previewFile[href=#previewFile]")
    .unbind()
    .click(function () {
      var link = $(this).attr("rel");
      $("#ui-dialog").remove();
      fotoHTML =
        '<img id="ui-dialogimg" style="max-width:480px" alt="' +
        link +
        '" src="' +
        link +
        '" >';
      $('<div id="ui-dialog">' + fotoHTML + "</div>").appendTo("body");
      var loaded = false;
      function loadHandler() {
        if (loaded) {
          return;
        }
        loaded = true;
        $("#ui-dialog").dialog({
          wrappContent: true,
          fixed: false,
          fitToWindow: false,
        });
      }
      var img = document.getElementById("ui-dialogimg");
      img.onload = loadHandler;
      img.src = link;
      img.style.display = "inline";
      if (img.complete) {
        loadHandler();
      }
      return false;
    });
  var virtual_count = $("div.virtual").length;
  var product_count = $("tr.productslist_item").length;
  if (
    $("form.basketedit_productslist").length &&
    typeof only_virtual_literal != "undefined" &&
    product_count == virtual_count
  ) {
    $("div.virtual").hide();
    $("div.basketedit_summary_left").before(
      '<span class="only_virtual">' + only_virtual_literal + "</span>"
    );
  }
});
app_shop.txt.txt_76148_1 = "Minimalnie musisz zamówić ";
app_shop.txt.txt_76148_2 = "Maksymalnie możesz zamówić: ";
app_shop.txt.txt_76148_3 = "Produkt niedostępny";
productslist_01_txt = "Wybierz produkty ";
productslist_02_txt = "Wybierz produkty ";
zagielnotconfirmed =
  "Zanim złożysz zamówienie, zapoznaj się z procedurą udzielenia kredytu ratalnego E-kredyt Żagiel.";
productslist_03a_txt = "Uwagi mogą mieć maksymalnie ";
productslist_03b_txt = " znaków. ";
productslist_maxvalue_04_txt = "255";
const basketeditTxt = {};
basketeditTxt.week1 = " tydzień";
basketeditTxt.week2 = " tygodnie";
basketeditTxt.week3 = " tygodni";
basketeditTxtWeek = [
  basketeditTxt.week3,
  basketeditTxt.week1,
  basketeditTxt.week2,
];
app_shop.run(
  function divisionChangeLiteral() {
    const weeks = $(".basket__division").data("shipping_week");
    $("strong.basket__division_weeks").html(
      weeks +
        app_shop.fn.changeLiteral(parseInt(weeks, 10), basketeditTxtWeek, true)
    );
    $('input[name="allow_division_order"]').on(
      "change",
      function submitFormChangeDivision() {
        $(this).parents("form").submit();
      }
    );
  },
  "all",
  ".basket__division"
);
$(function () {
  $("div.prodl_comment_right ol a.previewFile").each(function () {
    var limit = 26;
    var link = $(this).text();
    if (link.length >= limit)
      if (link.indexOf(".") > 0) {
        $(this).text(
          link.substring(
            0,
            limit < link.lastIndexOf(".") ? limit - 6 : link.indexOf(".") - 6
          ) +
            "[...]." +
            link.split(".").pop()
        );
      } else {
        $(this).text(link.substring(0, limit));
      }
  });
  $("a.previewFile[href=#previewFile]")
    .unbind()
    .click(function () {
      var link = $(this).attr("rel");
      $("#ui-dialog").remove();
      fotoHTML =
        '<img id="ui-dialogimg" style="max-width:480px" alt="' +
        link +
        '" src="' +
        link +
        '" >';
      $('<div id="ui-dialog">' + fotoHTML + "</div>").appendTo("body");
      var loaded = false;
      function loadHandler() {
        if (loaded) {
          return;
        }
        loaded = true;
        $("#ui-dialog").dialog({
          wrappContent: true,
          fixed: false,
          fitToWindow: false,
        });
      }
      var img = document.getElementById("ui-dialogimg");
      img.onload = loadHandler;
      img.src = link;
      img.style.display = "inline";
      if (img.complete) {
        loadHandler();
      }
      return false;
    });
});
var Basketedit = {
  getValues: function (obj) {
    var amount = obj.attr("data-amount");
    var unit_sellby = obj.attr("data-unit_sellby");
    var unit = obj.attr("data-unit");
    var precision = obj.attr("data-unit_precision");
    var max_q = obj.attr("data-max_q");
    var max_s = obj.attr("data-max_s");
    var min_q = obj.attr("data-min_q");
    var min_s = obj.attr("data-min_s");
    return {
      precision: precision,
      unit_sellby: unit_sellby,
      unit: unit,
      amount: amount,
      max_q: max_q,
      max_s: max_s,
      min_q: min_q,
      min_s: min_s,
    };
  },
  roundNumber: function (number, flag) {
    num = parseFloat(number);
    result = Math.abs(num.toFixed(flag));
    return result;
  },
  if_isanumber: function (test, basketedit_sellby) {
    if (isNaN(test)) return 1;
    if (basketedit_sellby == 1) {
      return test;
    } else {
      return basketedit_sellby;
    }
  },
  sellby_recount: function (price, sellby, switcher) {
    if (switcher == "up") {
      return price * sellby;
    } else {
      var sellby_correct = Math.round(switcher / sellby) * sellby;
      return sellby_correct;
    }
  },
  number_check: function (obj) {
    var element = obj;
    var itemValues = Basketedit.getValues(obj);
    var s = parseFloat(itemValues.unit_sellby);
    var p = parseFloat(itemValues.precision);
    var amount = parseFloat(itemValues.amount);
    if (isNaN(element.val())) {
      element.val(0);
      return false;
    }
    if (amount == 0) {
      Alertek.show_alert(app_shop.txt.txt_76148_3);
      element.val(0);
      return false;
    }
    var unit = itemValues.unit;
    var i = element.val();
    if (i <= 0) {
      element.val(0);
      return false;
    }
    i = parseFloat(i);
    var max_q = parseFloat(itemValues.max_q);
    var max_s = parseFloat(itemValues.max_s);
    var min_q = parseFloat(itemValues.min_q);
    var min_s = parseFloat(itemValues.min_s);
    if (!$.isNumeric(i) || i <= s) {
      if (!isNaN(max_q) || !isNaN(max_s) || !isNaN(min_q) || !isNaN(min_s)) {
        s = s.toFixed(p);
      } else {
        element.val(s.toFixed(p));
        return true;
      }
    }
    number = Math.floor(i / s) * s;
    number =
      ((i / s) * s - number).toFixed(p + 1) > 0
        ? (1 * number + s).toFixed(p)
        : number.toFixed(p);
    number = parseFloat(number);
    var fixedAmountMax = amount;
    var fixedAmountMin = s;
    var amountLeft = -1;
    var amountSum = -1;
    if (!isNaN(max_q)) {
      var elemClass = element.attr("class").replace(/\s/g, ".");
      amountLeft = $.map($("." + elemClass), function (item) {
        console.log("item map val: " + $(item).val());
        return parseFloat($(item).val());
      }).reduce(function (a, b) {
        console.log("item reduce val: " + (a + b));
        return a + b;
      });
      amountLeft = max_q - amountLeft;
      amountLeft = amountLeft < 0 ? "end" : amountLeft;
      var el = $("." + element.attr("class")).not(element);
      if (el.size()) {
        amountSum = $.map(el, function (item) {
          return parseFloat($(item).val());
        }).reduce(function (a, b) {
          return a + b;
        });
        amountSum = max_q - amountSum;
      }
      fixedAmountMax = fixedAmountMax > max_q ? max_q : fixedAmountMax;
    }
    if (!isNaN(max_s)) {
      fixedAmountMax = fixedAmountMax > max_s ? max_s : fixedAmountMax;
    }
    if (!isNaN(min_q)) {
      fixedAmountMin = min_q > fixedAmountMin ? min_q : fixedAmountMin;
    }
    if (!isNaN(min_s)) {
      fixedAmountMin = min_s > fixedAmountMin ? min_s : fixedAmountMin;
    }
    fixedAmountMin = fixedAmountMax > fixedAmountMin ? fixedAmountMin : s;
    if (fixedAmountMin && number < fixedAmountMin) {
      Alertek.show_alert(
        app_shop.txt.txt_76148_1 +
          " " +
          Math.ceil(parseFloat(fixedAmountMin) / s) * s +
          " " +
          unit
      );
      element.val(Math.ceil(parseFloat(fixedAmountMin) / s) * s);
      return true;
    }
    if (amountLeft == "end") {
      Alertek.show_alert(
        app_shop.txt.txt_76148_2 +
          " " +
          Math.floor(parseFloat(max_q) / s) * s +
          " " +
          unit
      );
      element.val(Math.floor(max_q));
      return true;
    }
    if (number > fixedAmountMax && fixedAmountMax != -1) {
      Alertek.show_alert(
        app_shop.txt.txt_76148_2 +
          " " +
          Math.floor(parseFloat(fixedAmountMax) / s) * s +
          " " +
          unit
      );
      element.val(Math.floor(parseFloat(fixedAmountMax) / s) * s);
      return true;
    } else {
      element.val(number);
      return true;
    }
  },
};
$(function () {
  $("#basketedit_productslist textarea").blur(function () {
    var q = $(this).val().length;
    var maxvalue = productslist_maxvalue_04_txt;
    if (q > maxvalue) {
      $(this).val($(this).val().substring(0, maxvalue));
      Alertek.show_alert(
        productslist_03a_txt + maxvalue + productslist_03b_txt
      );
    }
  });
  $(
    "#basketedit_productslist td.productslist_product_quantity input[type=text]"
  ).change(function () {
    Basketedit.number_check($(this));
  });
  $("#basketedit_productslist a").click(function () {
    var akcjaDoWykonania = $(this).attr("href");
    switch (akcjaDoWykonania) {
      case "#addComment":
        if (
          $(this)
            .parents("tr.productslist_product_sizes")
            .next()
            .find("div.prodl_comment_top").length
        ) {
          $(this)
            .parents("tr.productslist_product_sizes")
            .next()
            .find("div.prodl_comment_top")
            .toggle();
          $(this)
            .parents("tr.productslist_product_sizes")
            .next()
            .find("div.prodl_comment")
            .toggle();
        } else if (
          $(this).parents("tr").next().find("div.prodl_comment").length
        ) {
          $(this).parents("tr").next().find("div.prodl_comment").toggle();
          $(this).parents("tr").next().find("div.prodl_comment_top").toggle();
        }
        return false;
        break;
      case "#clearComment":
        $(this).prevAll("textarea").val("");
        return false;
        break;
      case "#removeSelected":
        if ($("td.procuctCheckbox_sub input:checked").length > 0) {
          $("td.procuctCheckbox_sub input:checked")
            .parents("tr.productslist_product_sizes")
            .find(".productslist_product_quantity input[type=text]")
            .val(0);
          $("form.basketedit_productslist").submit();
        } else {
          Alertek.show_alert(productslist_01_txt);
        }
        return false;
        break;
      case "#addSelectedToFavorite":
        if ($("td.procuctCheckbox_sub input:checked").length > 0) {
          $("#basketedit_productslist_favorite").remove();
          $(
            '<form style="display:none;" id="basketedit_productslist_favorite" action="/basketchange.php?type=multiproduct&mode=2" method="post"></form>'
          ).appendTo("body");
          $("td.procuctCheckbox_sub input:checked")
            .parents("tr")
            .find("input,textarea")
            .clone()
            .appendTo("#basketedit_productslist_favorite");
          $("#basketedit_productslist_favorite").submit();
        } else {
          Alertek.show_alert(productslist_02_txt);
        }
        return false;
        break;
      case "#saveQuantity":
        $("form.basketedit_productslist").submit();
        return false;
        break;
      case "#addQuantity":
        var unit_sellby = parseFloat(
          Basketedit.getValues($(this).parent().find("input[type=text]"))
            .unit_sellby
        );
        var quantity_product =
          parseFloat($(this).parent().find("input[type=text]").val()) +
          unit_sellby;
        $(this)
          .parent()
          .find("input[type=text]")
          .val(quantity_product)
          .change();
        return false;
        break;
      case "#delQuantity":
        var unit_sellby = parseFloat(
          Basketedit.getValues($(this).parent().find("input[type=text]"))
            .unit_sellby
        );
        var quantity_product =
          parseFloat($(this).parent().find("input[type=text]").val()) -
          unit_sellby;
        $(this)
          .parent()
          .find("input[type=text]")
          .val(quantity_product)
          .change();
        return false;
        break;
      default:
    }
  });
  $("input.selectAllCheckbox").click(function () {
    if ($(this).is(":checked")) {
      $("td.procuctCheckbox input").attr("checked", "checked");
      $("td.procuctCheckbox").addClass("procuctCheckboxSelect");
      $("td.procuctCheckbox_sub input").attr("checked", "checked");
      $("td.procuctCheckbox_sub").addClass("procuctCheckboxSelect");
    } else {
      $("td.procuctCheckbox input").removeAttr("checked");
      $("td.procuctCheckbox").removeClass("procuctCheckboxSelect");
      $("td.procuctCheckbox_sub input").removeAttr("checked", "checked");
      $("td.procuctCheckbox_sub").removeClass("procuctCheckboxSelect");
    }
  });
  $("td.procuctCheckbox input").click(function () {
    if ($("td.procuctCheckbox input").not(":checked").length > 0) {
      $("input.selectAllCheckbox").removeAttr("checked");
    }
    if (
      $("td.procuctCheckbox input:checked").length ==
      $("td.procuctCheckbox input").length
    ) {
      $("input.selectAllCheckbox").attr("checked", "checked");
    }
    if ($(this).is(":checked")) {
      $(this).parent().addClass("procuctCheckboxSelect");
      $(this)
        .parent()
        .siblings(".productslist_product_sizes_wrapper")
        .children()
        .children()
        .children()
        .children("td.procuctCheckbox_sub")
        .each(function () {
          $(this).addClass("procuctCheckboxSelect");
          $(this)
            .children("input.procuctCheckbox_sub")
            .attr("checked", "checked");
        });
    } else {
      $(this).parent().removeClass("procuctCheckboxSelect");
      $(this)
        .parent()
        .siblings(".productslist_product_sizes_wrapper")
        .children()
        .children()
        .children()
        .children("td.procuctCheckbox_sub")
        .each(function () {
          $(this).removeClass("procuctCheckboxSelect");
          $(this).children("input.procuctCheckbox_sub").removeAttr("checked");
        });
    }
  });
  $("td.procuctCheckbox_sub input").click(function () {
    if ($("td.procuctCheckbox_sub input").not(":checked").length > 0) {
      $("input.selectAllCheckbox").removeAttr("checked");
    }
    if (
      $("td.procuctCheckbox_sub input:checked").length ==
      $("td.procuctCheckbox_sub input").length
    ) {
      $("input.selectAllCheckbox").attr("checked", "checked");
    }
    if (
      $(this)
        .parents("table.productslist_product_sizes")
        .find("td.procuctCheckbox_sub input")
        .not(":checked").length > 0
    ) {
      $(this)
        .parents("td.productslist_product_sizes_wrapper")
        .siblings("td.procuctCheckbox")
        .removeClass("procuctCheckboxSelect");
      $(this)
        .parents("td.productslist_product_sizes_wrapper")
        .siblings("td.procuctCheckbox")
        .children("input")
        .removeAttr("checked");
    }
    if (
      $(this)
        .parents("table.productslist_product_sizes")
        .find("td.procuctCheckbox_sub input:checked").length ==
      $(this)
        .parents("table.productslist_product_sizes")
        .find("td.procuctCheckbox_sub input").length
    ) {
      $(this)
        .parents("td.productslist_product_sizes_wrapper")
        .siblings("td.procuctCheckbox")
        .addClass("procuctCheckboxSelect");
      $(this)
        .parents("td.productslist_product_sizes_wrapper")
        .siblings("td.procuctCheckbox")
        .children("input")
        .attr("checked", "checked");
    }
    if ($(this).is(":checked")) {
      $(this).parent().addClass("procuctCheckboxSelect");
    } else {
      $(this).parent().removeClass("procuctCheckboxSelect");
    }
  });
});
$(function () {
  $("#a_change_code").click(function () {
    $("#change_code").toggle();
    return false;
  });
  $("#a_remove_code").click(function () {
    $("input.basketedit_rebatecode_input").val(" ");
    $("#change_code").submit();
    return false;
  });
});
var basket_gross_txt = " brutto";
function countAnnuityEraty(account, version, amount) {
  window.open(
    "https://www.eraty.pl/symulator/oblicz.php?numerSklepu=" +
      account +
      "&wariantSklepu=" +
      version +
      "&typProduktu=0&wartoscTowarow=" +
      amount,
    "count_zagiel",
    "width=630,height=500,directories=no,location=no,menubar=no,resizable=yes,scrollbars=yes,status=no,toolbar=no"
  );
}
function init_basketedit_summary() {
  $("div.n68242_instalment_wrapper_close").click(function () {
    $("div.n68242_instalment_list").hide();
  });
  $("a.n68242_instalment_button").click(function () {
    if (parseInt($(this).attr("data-bankcount")) > 1) {
      $("#n66734_instalment div.n68242_instalment_list").toggle();
    } else if (parseInt($(this).attr("data-bankcount")) == 1) {
      if (cena_raty > 0) {
        $("a.n68242_single_instalment_action").click();
      } else {
        $("#n66734_instalment div.n68242_instalment_list").show("fast");
      }
    }
    return false;
  });
  $("a.n68242_single_instalment").click(function () {
    if (cena_raty > 0) {
      $("a.n68242_single_instalment_action").click();
    } else {
      $("#n66734_instalment div.n68242_instalment_list").toggle("fast");
    }
    return false;
  });
  if ($("div.basketedit_calculations").children().length < 3)
    $("div.basketedit_calculations").hide();
  $("#basket_go_next, #basket_go_next_phone").on(
    "click",
    function basketGoNext() {
      if (!$(this).attr("data-disabled")) {
        $("form.basket__form").append(
          '<input type="hidden" name="after_basket_change" value="order"/>'
        );
        $("form.basket__form").submit();
      }
      if ($("form.basket__form").length > 0) {
        return false;
      }
      return true;
    }
  );
}
app_shop.run(
  function () {
    init_basketedit_summary();
  },
  "all",
  ".basketedit_summary_container"
);
app_shop.run(
  function () {
    $("#basketedit_gifts").on("click", ".basketedit_gifts_btn", function () {
      $("div.basketedit_gifts_wrapper").toggle();
      $(this).toggleClass("active");
      $("#basketedit_gifts")
        .find(".gift_item_icon")
        .css(
          "height",
          $(".basketedit_gifts_wrapper > ul > li")
            .find(".gift_item_icon")
            .maxHeight()
        );
    });
    $(function () {
      $("#basketedit_gifts")
        .find(".gift_item_icon")
        .css(
          "height",
          $(".basketedit_gifts_wrapper > ul > li")
            .find(".gift_item_icon")
            .maxHeight()
        );
    });
  },
  "all",
  "#basketedit_gifts"
);
twoj_prezent_txt = "TWÓJ PREZENT:";
function setGiftsItems() {
  $("div.gift_tooltip div.gift_choose").click(function (evt) {
    clearGiftsItems();
    $(this).parents(":eq(3)").addClass("gift_active");
    $(this).parents(":eq(3)").find("input[type=radio]").attr("checked", true);
    $(this).parents(":eq(3)").find('input[name="set_quantity[0]"]').val(1);
    $(
      '<div style="display:none;" id="basketedit_productslist_gift"></div>'
    ).appendTo("form.basketedit_productslist");
    $(this)
      .parents(":eq(3)")
      .find("input[type=hidden]")
      .clone()
      .appendTo("#basketedit_productslist_gift");
    $("div.gift_tooltip").slideUp("fast");
    evt.stopImmediatePropagation();
  });
  $("div.gift_tooltip div.gift_resign").click(function (evt) {
    clearGiftsItems();
    $("div.gift_tooltip").slideUp("fast");
    evt.stopImmediatePropagation();
  });
  $.each($("#basketedit_gifts li.gift_enable"), function () {
    var _wrapper = $(this).find("div.gift_tooltip");
    if ($(this).find("div.gift_tooltip").length) {
      $(this).click(function () {
        $(this).find("div.gift_tooltip").slideToggle("fast");
        if ($(this).hasClass("gift_active")) {
          $(this).find("div.gift_choose").hide();
          $(this).find("div.gift_resign").show();
        } else {
          $(this).find("div.gift_choose").show();
          $(this).find("div.gift_resign").hide();
        }
      });
    } else {
      $(this).click(function () {
        if ($(this).is(".gift_active")) {
          clearGiftsItems();
        } else {
          clearGiftsItems();
          $(this)
            .addClass("gift_active")
            .find("h3")
            .prepend('<div id="your_gift_txt">' + twoj_prezent_txt);
          $(this).find("input[type=radio]").attr("checked", true);
          $(this)
            .parents(":eq(3)")
            .find('input[name="set_quantity[0]"]')
            .val(1);
          $(
            '<div style="display:none;" id="basketedit_productslist_gift"></div>'
          ).appendTo("form.basketedit_productslist");
          $(this)
            .find("input[type=hidden]")
            .clone()
            .appendTo("#basketedit_productslist_gift");
        }
      });
    }
  });
  function clearGiftsItems() {
    $.each($("#basketedit_gifts li.gift_enable"), function () {
      $(this).removeClass("gift_active");
      $(this).find("input[type=radio]").removeAttr("checked");
      $(this).find('input[name="set_quantity[0]"]').val(0);
      $(this).find("#your_gift_txt").remove();
      $("#basketedit_productslist_gift").remove();
    });
  }
  $("#basketedit_gifts li.gift_enable select").click(function (evt) {
    $("#basketedit_gifts li.gift_enable").removeClass("gift_active");
    $(this).parents("li").addClass("gift_active");
    $(this).parents("li").find("input[type=radio]").attr("checked", true);
    $("#basketedit_productslist_gift").remove();
    $(
      '<div style="display:none;" id="basketedit_productslist_gift"></div'
    ).appendTo("form.basketedit_productslist");
    $(this)
      .parents("li")
      .find("input[type=hidden]")
      .clone()
      .appendTo("#basketedit_productslist_gift");
    evt.stopImmediatePropagation();
  });
  $("#basketedit_gifts li.gift_enable select").change(function () {
    $("#basketedit_gifts li.gift_enable").removeClass("gift_active");
    $(this).next().val($(this).val());
    $("#basketedit_productslist_gift").remove();
    $(
      '<div style="display:none;" id="basketedit_productslist_gift"></div'
    ).appendTo("form.basketedit_productslist");
    $(this)
      .parents("li")
      .find("input[type=hidden]")
      .clone()
      .appendTo("#basketedit_productslist_gift");
  });
}
app_shop.run(
  function () {
    setGiftsItems();
  },
  "all",
  "#basketedit_gifts"
);
app_shop.run(
  function () {
    $(".pb_icon img.rwd-src").each(function () {
      $this = $(this);
      $this.attr("src", app_shop.fn.getRwdSrc($this));
    });
  },
  [1, 2, 3, 4],
  "#favourites_list"
);
app_shop.run(
  function () {
    $("div.categories-list_wrapper ul").show();
  },
  4,
  "div.categories-list_wrapper",
  true
);
app_shop.run(
  function () {
    $("div.categories-list_wrapper ul").show();
  },
  3,
  "div.categories-list_wrapper",
  true
);
app_shop.run(
  function () {
    $("div.categories-list_wrapper ul").show();
  },
  2,
  "div.categories-list_wrapper",
  true
);
app_shop.run(
  function () {
    $(
      "div.categories-list_wrapper ul.categories-list_level2, div.categories-list_wrapper ul.categories-list_level3"
    ).hide();
    $("span.more_categories")
      .unbind()
      .click(function () {
        $(this).toggleClass("open").next("ul").slideToggle();
      });
  },
  1,
  "div.categories-list_wrapper",
  true
);
app_shop.run(
  function () {
    $("button.n68137_files_download").on("click", function () {
      var $this = $(this);
      $this.parent().find("div.n68137_popup").dialog({
        wrappContent: true,
        removeContent: false,
        fixed: false,
        fitToWindow: false,
        width: 500,
      });
      return false;
    });
  },
  "all",
  ".n68137_downloadable"
);
var client_new_social_info_js_txt_1 =
  "Zaloguj się na którąś z wyżej wymienionych formy logowania aby dokończyć rejestrację.";
app_shop.run(
  function () {
    $("#client_new_social_info").dialog({ wrappContent: "true" });
  },
  "all",
  "#client_new_social_info"
);
app_shop.run(
  function () {
    $("#button_alert div").html(client_new_social_info_js_txt_1);
    $("#submit_register")
      .removeAttr("onclick")
      .click(function () {
        $("#button_alert").show();
        return false;
      });
    $("#submit_register").hover(
      function () {},
      function () {
        $("#button_alert").hide();
      }
    );
    $("#client_new_social li strong").on("click", function () {
      $("#client_new_social form")
        .not($("#social_networking_" + $(this).attr("data-service")))
        .hide();
      $("#social_networking_" + $(this).attr("data-service")).toggle();
    });
    $("#client_new_social form").on("submit", function () {
      window.location =
        "/" + $(this).attr("action") + "?" + $(this).serialize();
      return false;
    });
  },
  "all",
  "#client_new_social"
);
app_shop.run(
  () => {
    app_shop.vars.topSpacer = 70;
  },
  1,
  ".client-new_page"
);
app_shop.run(
  () => {
    app_shop.vars.topSpacer = 10;
  },
  [2, 3, 4],
  ".client-new_page"
);
app_shop.run(
  function () {
    if (
      $(".no_password_social_text").length &&
      $("#client_new_social form").length === 0
    ) {
      $(".change_password_mode").append($("#client_new_social"));
      $(".no_password_social_text").show();
    }
    $("#client_generate_password2").prop("checked", true);
    $("div.password-group").show();
    client_new.enabled($("div.password-group"));
    $("html, body").animate({ scrollTop: $("#client_new_login").offset().top });
  },
  "all",
  ".change_password_mode"
);
app_shop.run(
  function () {
    const scrollPos = $("[data-mode=change_delivery_address]").offset().top;
    $("body, html").animate(
      { scrollTop: parseInt(scrollPos, 10) - 100 },
      500,
      "swing"
    );
  },
  "all",
  "[data-mode=change_delivery_address]"
);
clientnew_00_txt = "Mamy już zarejestrowane konto dla podanego adresu e-mail: ";
clientnew_01_txt = "Pamiętam swój login i hasło i mogę je podać.";
clientnew_02_txt =
  "Chcę stworzyć nowe konto przy użyciu tego adresu (niezalecane).";
clientnew_03_txt = "Wyślij e-mail pozwalający na automatyczne zalogowanie";
clientnew_06_txt = "Wyślij wiadomość na adres";
clientnew_07_txt = "z danymi potrzebnymi do logowania .";
clientnew_08_txt = "<br/>Założone wcześniej konto zostało połączone z kontem";
clientnew_13_txt =
  "Proponujemy Ci użycie tego konta, co pozwoli Ci korzystać z przywilejów zarezerwowanych dla wielokrotnych klientów. Aby się zalogować na wcześniej założone konto, wystarczy kliknięcie na link, który możemy Ci wysłać w e-mailu.";
clientnew_14_txt =
  "Poprawne formaty kodu pocztowego dla wybranego kraju to [X - cyfra; Y - litera]:";
clientnew_15c_txt = "znaków).";
clientnew_16_txt = "Proszę wypełnić to pole.";
clientnew_16a_txt = '<i class="icon-visibility"></i>';
clientnew_16b_txt = '<i class="icon-novisibility"></i>';
var clientNewErrorCode = [];
clientNewErrorCode["no_login"] = "Wpisz w to pole swój login.";
clientNewErrorCode["incorect_login"] =
  "Błędnie wpisany login. Login musi mieć minimum 3 znaki (tylko litery lub cyfry).";
clientNewErrorCode["no_password"] = "Wpisz w to pole swoje hasło.";
clientNewErrorCode["password_to_short"] =
  "Zbyt krótkie hasło. Wpisz dłuższe hasło (minimum 6 znaków).";
clientNewErrorCode["password_to_long"] =
  "Za długie hasło. Wpisz krótsze hasło (maksimum 15 znaków).";
clientNewErrorCode["login_equals_password"] =
  "Hasło jest takie samo jak login. Wpisz inne hasło.";
clientNewErrorCode["not_equal_passwords"] =
  "Wpisane hasła nie są takie same. Wpisz ponownie hasło i potwierdzenie.";
clientNewErrorCode["no_firstname"] = "Wpisz w to pole swoje imię.";
clientNewErrorCode["no_name"] = "Wpisz w to pole swoje nazwisko.";
clientNewErrorCode["incorect_email"] =
  "Błędnie wpisany e-mail. Wpisz pełny adres e-mail, np. jan@kowalski.com";
clientNewErrorCode["incorect_shops"] = "Wybierz sklep z listy.";
clientNewErrorCode["incorect_nip"] =
  "Błędnie wpisany NIP. Prawidłowy NIP ma 10 cyfr.";
clientNewErrorCode["no_firmname"] = "Błędnie wpisana nazwa firmy.";
clientNewErrorCode["incorrect_region"] = "Błędnie wybrany region.";
clientNewErrorCode["no_city"] = "Wpisz w to pole nazwę miasta.";
clientNewErrorCode["birth_date"] =
  "Wpisz poprawną datę urodzenia w formacie RRRR-MM-DD";
clientNewErrorCode["no_street"] =
  "Wpisz nazwę ulicy lub miejscowości i numer domu.";
clientNewErrorCode["no_street_number"] =
  "Wpisz nazwę ulicy lub miejscowości i numer domu.";
clientNewErrorCode["incorect_phone"] = "Wpisz swój telefon.";
clientNewErrorCode["incorect_zipcode"] = "Błędnie wpisany kod pocztowy.";
clientNewErrorCode["no_delivery_firstname"] = "Wpisz imię odbiorcy przesyłki.";
clientNewErrorCode["no_delivery_lastname"] =
  "Wpisz nazwisko odbiorcy przesyłki.";
clientNewErrorCode["no_delivery_city"] = "Wpisz miasto odbiorcy przesyłki.";
clientNewErrorCode["no_delivery_street"] =
  "Wpisz ulicę i numer domu odbiorcy przesyłki.";
clientNewErrorCode["incorect_delivery_region"] =
  "Wybierz kraj odbiorcy przesyłki.";
clientNewErrorCode["incorect_delivery_zipcode"] =
  "Wpisz kod pocztowy odbiorcy przesyłki.";
clientNewErrorCode["login_taken"] = "Podany login jest już zajęty";
clientNewErrorCode["login_taken_login_propose"] =
  "Podany login jest już zajęty.<br/><br/>Proponowany login: ";
clientNewErrorCode["illegal_characters_client_firstname"] =
  "Jeden z użytych znaków jest niedozwolony.";
clientNewErrorCode["illegal_characters_client_lastname"] =
  "Jeden z użytych znaków jest niedozwolony.";
clientNewErrorCode["illegal_characters_client_street"] =
  "Jeden z użytych znaków jest niedozwolony.";
clientNewErrorCode["illegal_characters_client_city"] =
  "Jeden z użytych znaków jest niedozwolony.";
clientNewErrorCode["illegal_characters_client_phone"] =
  "Jeden z użytych znaków jest niedozwolony.";
clientNewErrorCode["illegal_characters_client_phone2"] =
  "Jeden z użytych znaków jest niedozwolony.";
clientNewErrorCode["illegal_characters_client_firm"] =
  "Jeden z użytych znaków jest niedozwolony.";
clientNewErrorCode["illegal_characters_delivery_firstname"] =
  "Jeden z użytych znaków jest niedozwolony.";
clientNewErrorCode["illegal_characters_delivery_lastname"] =
  "Jeden z użytych znaków jest niedozwolony.";
clientNewErrorCode["illegal_characters_delivery_city"] =
  "Jeden z użytych znaków jest niedozwolony.";
clientNewErrorCode["illegal_characters_delivery_additional"] =
  "Jeden z użytych znaków jest niedozwolony.";
clientNewErrorCode["illegal_characters_delivery_street"] =
  "Jeden z użytych znaków jest niedozwolony.";
clientNewErrorCode["illegal_characters_delivery_phone"] =
  "Jeden z użytych znaków jest niedozwolony.";
clientNewErrorCode["illegal_characters_client_nip"] =
  "Jeden z użytych znaków jest niedozwolony.";
clientNewErrorCode["password_to_short"] =
  "Zbyt krótkie hasło. Wpisz dłuższe hasło (minimum";
clientNewErrorCode["password_to_long"] =
  "Za długie hasło. Wpisz krótsze hasło (maksimum";
clientNewErrorCode["no_invoice_firstname"] = "Wpisz imię klienta.";
clientNewErrorCode["no_invoice_lastname"] = "Wpisz nazwisko klienta.";
clientNewErrorCode["no_invoice_firmname"] = "Wpisz nazwę firmy klienta.";
clientNewErrorCode["incorect_invoice_phone"] = "Wpisz telefon klienta.";
clientNewErrorCode["no_invoice_city"] = "Wpisz miasto klienta.";
clientNewErrorCode["no_invoice_street"] = "Wpisz ulicę i numer domu klienta.";
clientNewErrorCode["no_invoice_street_number"] =
  "Wpisz ulicę i numer domu klienta.";
clientNewErrorCode["incorect_invoice_zipcode"] = "Wpisz kod pocztowy klienta.";
if ($("#client_new_form").length) {
  var client_new_form_script = document.createElement("script");
  client_new_form_script.type = "text/javascript";
  client_new_form_script.src = app_shop.urls.prefix + "client_new_form.js";
  document.body.appendChild(client_new_form_script);
}
app_shop.run(
  function () {
    $("#client_new_summary").before($("div.rebate_card_wrap"));
  },
  "all",
  ".rebate_card_wrap"
);
app_shop.run(function () {
  $("#n67313_a_change_code,#n67313_a_change_cart").click(function () {
    var parent = $(this).parents(".n67313_out");
    parent.find("div.code-info").hide();
    parent.find("div.rabate-form").show();
    parent.find("div.rabate-button").hide();
  });
  $("#n67313_a_remove_code").click(function () {
    var form = $(this).parents(".active-code").find("form");
    form.find('input[name="rebates_codes"]').val(" ");
    form.submit();
    return false;
  });
}, "all");
app_shop.run(
  function () {
    if (app_shop.vars.view != 1) {
      $("a.show_on_map").click(function () {
        contact_map.showMap();
        return false;
      });
    }
    if (app_shop.vars.view == 1) {
      $("div.contact_contact_right p").each(function () {
        if ($(this).find("a").size()) {
          $(this).css("cursor", "pointer");
          $(this).click(function () {
            window.location = $(this).find("a").attr("href");
          });
        }
      });
    }
  },
  "all",
  "#contact_contact"
);
app_shop.fn.replaceSelects = function (elements, name, callbackOnChange) {
  elements.each(function (i) {
    var $select = $(this),
      number = i;
    ($selectValue = $select.val()), ($selectName = $select.attr("name"));
    $labelName = "";
    if ($select.data("label")) {
      $labelName = "<b>" + $select.data("label") + "</b>";
    }
    ($ul = $(
      '<div class="dropdown dropdownsearching form-group ' +
        $select.attr("class") +
        '"><ul class="dropdown-menu" aria-labelledby="' +
        name +
        number +
        '"></ul></div>'
    )),
      $select.children().each(function (i) {
        var $option = $(this);
        $li = $("<li>");
        var dataAttrs = new Array();
        $.each($option.data(), function (key, value) {
          var _data = "data-" + key + "=" + value;
          dataAttrs.push(_data);
        });
        if (dataAttrs.length) var $data = dataAttrs.join(" ");
        else var $data = "";
        $('<a data-index="' + i + '" ' + $data + ">")
          .attr("href", "#" + $option.attr("value"))
          .attr("data-value", $option.attr("value"))
          .text($option.text())
          .addClass($selectValue == $option.attr("value") ? "selected" : "")
          .appendTo($li);
        $li.appendTo($ul.find("ul"));
        if ($option.attr("class")) {
          $li.addClass($option.attr("class"));
        }
        if ($option.attr("data-price")) {
          $li.attr("data-price", $option.attr("data-price"));
        }
      });
    $ul
      .prepend(
        '<button id="' +
          name +
          number +
          '" class="form-control dropdown-toggle" data-indexcurrent="0" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">' +
          $labelName +
          "<span>" +
          $select.find("option:selected").text() +
          "</span></button>"
      )
      .prepend(
        '<input class="select_hidden searching_ajax" type="hidden" name="' +
          $selectName +
          '" value="' +
          $selectValue +
          '" />'
      );
    if (callbackOnChange)
      $ul.find("li").on("click.option", function () {
        callbackOnChange($(this));
      });
    $select.replaceWith($ul);
  });
};
app_shop.run(
  function () {
    $("footer").before($("#search_hotspot_zone1"));
  },
  "all",
  "#search_hotspot_zone1"
);
app_shop.fn.rwdBanner("#menu_buttons", [1, 2, 3, 4]);
app_shop.run(
  function footerLinksLabel() {
    $(".footer_links_label").on("click", function slideFooterLinksLabel(e) {
      e.preventDefault();
      $(this).next().slideToggle("fast");
    });
  },
  "1",
  ".footer_links_label"
);
app_shop.run(
  function footerLinksLabel() {
    $(".footer_links_label").off("click");
    $(".footer_links_label").next().show();
  },
  [2, 3, 4],
  ".footer_links_label"
);
app_shop.run(
  function () {
    $("#menu_contact").append($(".logo_iai"));
  },
  [3, 4],
  ".logo_iai"
);
app_shop.run(
  function () {
    $("#footer_links").after($(".logo_iai"));
  },
  [1, 2],
  ".logo_iai"
);
app_shop.fn.rwdBanner(".platnosci_54388", [1, 2, 3, 4]);
app_shop.fn.rwdBanner("#menu_banners2", [1, 2, 3, 4]);
app_shop.run(function () {
  simple_tooltip(".showTip", "n59581_tooltip_dictionary");
  simple_tooltip("#contentcolumn_order1 .showTip_order1", "n59581_tooltip");
  simple_tooltip("#basketedit_gifts .showTip_gift", "n59581_tooltip");
  simple_tooltip("#basketedit_productslist .showTip_basket", "n59581_tooltip");
  simple_tooltip("span.btn_note", "n59581_instalment_note");
}, "all");
function simple_tooltip(target_items, name, onLeft) {
  var simple_tooltip_content = "";
  var tip_handle = "";
  $(target_items).live("mouseover", function () {
    if ($(this).next().is(".tooltipContent")) {
      simple_tooltip_content = $(this).next().html();
    } else if ($(this).prop("title")) {
      simple_tooltip_content = $(this).prop("title");
      $(this).removeAttr("title");
    }
    $("#" + name).remove();
    clearTimeout(tip_handle);
    $("body").append(
      "<div style='display:none;' class='" +
        name +
        "' id='" +
        name +
        "'><p></p></div>"
    );
    $("#" + name).hover(
      function () {
        clearTimeout(tip_handle);
      },
      function () {
        $("#" + name).remove();
      }
    );
    if (
      simple_tooltip_content != "" &&
      simple_tooltip_content != " " &&
      simple_tooltip_content != "undefined"
    ) {
      $("#" + name)
        .find("p")
        .html(simple_tooltip_content);
      $("#" + name).fadeIn(400);
    }
  });
  $(target_items).live("mousemove", function (kmouse) {
    var border_top = $(window).scrollTop();
    var border_right = $(window).width();
    var left_pos;
    var top_pos;
    var offset = 15;
    var toLeft = onLeft || false;
    if (toLeft) {
      if (kmouse.pageX - $("#" + name).outerWidth(true) - offset <= 0) {
        left_pos = kmouse.pageX + offset;
      } else {
        left_pos = kmouse.pageX - offset - $("#" + name).outerWidth(true);
      }
      if (border_top + offset * 2 >= kmouse.pageY - $("#" + name).height()) {
        top_pos = border_top + offset;
      } else {
        top_pos = kmouse.pageY - $("#" + name).outerHeight(true) - offset;
      }
    } else {
      if (border_right - offset * 2 >= $("#" + name).width() + kmouse.pageX) {
        left_pos = kmouse.pageX + offset;
      } else {
        left_pos = border_right - $("#" + name).width() - offset;
      }
      if (border_top + offset * 2 >= kmouse.pageY - $("#" + name).height()) {
        top_pos = border_top + offset;
      } else {
        top_pos = kmouse.pageY - $("#" + name).height() - offset;
      }
    }
    $("#" + name).css({ left: left_pos, top: top_pos });
  });
  $(target_items).live("mouseout", function () {
    if (!$(this).next().is(".tooltipContent")) {
      $(this).prop("title", simple_tooltip_content);
    }
    tip_handle = setTimeout(function () {
      $("#" + name).remove();
    }, 500);
  });
  $(document).bind("touchstart", function (e) {
    if (
      $(e.target).closest("#" + name).length === 0 &&
      $(e.target).closest(target_items).length === 0 &&
      $("#" + name).size()
    ) {
      $("#" + name).remove();
    }
  });
}
(function ($) {
  $.fn.extend({
    dialog: function (options) {
      var defaults = {
        content: "text",
        wrappContent: false,
        removeContent: true,
        width: false,
        wrapperClass: false,
        cover: true,
        fixed: true,
        fitToWindow: true,
        coverColor: "#000",
        coverOpacity: "0.6",
        animate: true,
        showCloseButton: true,
        offsetApp: 120,
        beforeShow: function () {},
        afterShow: function () {},
        afterCloseFn: function () {},
        txtCloseButton: "x",
        buttons: [],
      };
      options = $.extend(defaults, options);
      $mousePosY = 0;
      $mousePosX = 0;
      $animateHeight = 0;
      $animateWidth = 0;
      $wrapperWidth = 0;
      $wrapperHeight = 0;
      $wrapperSubHeight = 0;
      $cloneElement = 0;
      return this.each(function () {
        $element = $(this);
        var closeAll = function (id) {
          if ($cloneElement) {
            $cloneElement.hide();
            $cloneElement.appendTo("body");
            $cloneElement = 0;
          }
          $("#dialog_cover,#dialog_wrapper").remove();
          $("body").removeClass("dialog_open");
        };
        var createCover = function () {
          $("body").append("<div id='dialog_cover'></div>");
          $("#dialog_cover")
            .css({
              height: $(document).height(),
              width: $(window).width(),
              position: "fixed",
              background: options.coverColor,
              opacity: options.coverOpacity,
              left: "0px",
              top: "0px",
              "z-index": 900,
            })
            .click(function () {
              closeAll();
              options.afterCloseFn();
            });
        };
        var createDialog = function () {
          var that, dialogBody, buttonHtml, buttons;
          that = this;
          dialogBody = $(
            '<div id="dialog_wrapper"><div id="dialog_wrapper_sub"></div></div>'
          );
          buttons = options.buttons;
          if (options.showCloseButton)
            dialogBody
              .find("#dialog_wrapper_sub")
              .before(
                '<a id="dialog_close" href="#close">' +
                  options.txtCloseButton +
                  "</a>"
              );
          if (
            !$.isEmptyObject(buttons) ||
            ($.isArray(buttons) && buttons.length)
          ) {
            dialogBody
              .find("#dialog_wrapper_sub")
              .after('<div id="ui-dialog_button"></div>');
            $.each(buttons, function (name, props) {
              var click, buttonOpts;
              props = $.isFunction(props)
                ? { text: name, click: props }
                : props;
              if (!props.className) props.className = "btn-small";
              dialogBody
                .find("#ui-dialog_button")
                .append(
                  $(
                    '<button class="' +
                      props.className +
                      '">' +
                      props.text +
                      "</button>"
                  ).on("click", props.click)
                );
            });
          }
          $("body").append(dialogBody);
          if (options.width) $("#dialog_wrapper").css({ width: options.width });
          if (options.wrapperClass)
            $("#dialog_wrapper").addClass(options.wrapperClass);
          $("#dialog_wrapper").css({ top: "-1000px", "z-index": "901" });
          if (options.fixed) {
            $("#dialog_wrapper").css({ position: "fixed" });
          } else {
            $("#dialog_wrapper").css({ position: "absolute" });
          }
          if (options.wrappContent) {
            $cloneElement = $element.clone(true);
            if (options.removeContent) $element.remove();
            $cloneElement.show();
            $cloneElement.prependTo("#dialog_wrapper_sub");
            $("#dialog_wrapper_sub div:first-child").show();
          } else {
            $("#dialog_wrapper_sub").html(options.content);
          }
          if (!options.clickAnimate) {
            $("#dialog_close").click(function () {
              closeAll();
              options.afterCloseFn();
            });
          }
          options.beforeShow();
          $("body").addClass("dialog_open");
        };
        var animateDialog = function (id) {
          $wrapperWidth = $(id).outerWidth();
          $wrapperHeight = $(id).outerHeight();
          $wrapperSubHeight = $("#dialog_wrapper_sub").height();
          if (app_shop.vars.isMobileApp == true)
            $wrapperHeight += options.offsetApp;
          if ($(window).height() > $("#dialog_wrapper").outerHeight()) {
            if (options.animate) {
              if (options.fixed) {
                $(id)
                  .css({ "margin-left": -$wrapperWidth / 2, left: "50%" })
                  .animate({
                    top: $(window).height() / 2 - $wrapperHeight / 2,
                  });
              } else {
                $(id)
                  .css({ "margin-left": -$wrapperWidth / 2, left: "50%" })
                  .animate({
                    top:
                      $(window).height() / 2 -
                      $wrapperHeight / 2 +
                      $(window).scrollTop(),
                  });
              }
            } else {
              $(id).css({
                "margin-left": -$wrapperWidth / 2,
                left: "50%",
                top:
                  $(window).height() / 2 -
                  $wrapperHeight / 2 +
                  $(window).scrollTop(),
              });
            }
          } else {
            if (options.fitToWindow) {
              $("#dialog_wrapper_sub")
                .css({
                  "max-height":
                    $(window).height() -
                    40 -
                    ($wrapperHeight - $wrapperSubHeight),
                  overflow: "auto",
                })
                .addClass("setMaxHeightWindow");
            }
            if (options.animate) {
              if (options.fixed) {
                $(id)
                  .css({ "margin-left": -$wrapperWidth / 2, left: "50%" })
                  .animate({ top: "20px" });
              } else {
                $(id)
                  .css({ "margin-left": -$wrapperWidth / 2, left: "50%" })
                  .animate({ top: 20 + $(window).scrollTop() });
              }
            } else {
              $(id).css({
                "margin-left": -$wrapperWidth / 2,
                left: "50%",
                top: 20 + $(window).scrollTop(),
              });
            }
          }
          $("#dialog_wrapper").addClass("active");
        };
        closeAll();
        if (options.cover) {
          createCover();
        }
        createDialog();
        animateDialog("#dialog_wrapper");
        options.afterShow();
      });
    },
  });
})(jQuery);
app_shop.run(
  function () {
    var triggerDialogShow = function (elem, triggerType) {
      switch (triggerType) {
        case "auto":
          $(elem.attr("data-dialog-content")).dialog({
            wrappContent: true,
            beforeShow: eval(elem.attr("data-dialog-beforeShow"))(),
          });
          break;
        case "click":
          elem.live("click", function () {
            $(elem.attr("data-dialog-content")).dialog({
              wrappContent: true,
              beforeShow: eval(elem.attr("data-dialog-beforeShow"))($(this)),
            });
          });
          break;
      }
    };
    $("[data-dialog-start]").each(function () {
      var $this = $(this);
      var initMethods = $this.attr("data-dialog-start");
      if (initMethods.indexOf("|") > -1)
        $.each(initMethods.split("|"), function (key, value) {
          triggerDialogShow($this, value);
        });
      else triggerDialogShow($this, initMethods);
    });
  },
  "all",
  "body"
);
var iaical_dateFormat = "yy-mm-dd";
var iaical_firstDay = "1";
days_01_txt = "n";
days_02_txt = "pn";
days_03_txt = "wt";
days_04_txt = "śr";
days_05_txt = "czw";
days_06_txt = "pt";
days_07_txt = "so";
month_01_txt = "Styczeń";
month_02_txt = "Luty";
month_03_txt = "Marzec";
month_04_txt = "Kwiecień";
month_05_txt = "Maj";
month_06_txt = "Czerwiec";
month_07_txt = "Lipiec";
month_08_txt = "Sierpień";
month_09_txt = "Wrzesień";
month_10_txt = "Październik";
month_11_txt = "Listopad";
month_12_txt = "Grudzień";
month_2_01_txt = "Stycznia";
month_2_02_txt = "Lutego";
month_2_03_txt = "Marca";
month_2_04_txt = "Kwietnia";
month_2_05_txt = "Maja";
month_2_06_txt = "Czerwca";
month_2_07_txt = "Lipca";
month_2_08_txt = "Sierpnia";
month_2_09_txt = "Września";
month_2_10_txt = "Października";
month_2_11_txt = "Listopada";
month_2_12_txt = "Grudnia";
month_3_01_txt = "STY";
month_3_02_txt = "LUT";
month_3_03_txt = "MAR";
month_3_04_txt = "KWI";
month_3_05_txt = "MAJ";
month_3_06_txt = "CZE";
month_3_07_txt = "LIP";
month_3_08_txt = "SIE";
month_3_09_txt = "WRZ";
month_3_10_txt = "PAŹ";
month_3_11_txt = "LIS";
month_3_12_txt = "GRU";
iaical_monthNext = "Następny miesiąc";
iaical_monthPrev = "Poprzedni miesiąc";
var iaical_daysShort = [
  days_01_txt,
  days_02_txt,
  days_03_txt,
  days_04_txt,
  days_05_txt,
  days_06_txt,
  days_07_txt,
];
var iaical_monthNames = [
  month_01_txt,
  month_02_txt,
  month_03_txt,
  month_04_txt,
  month_05_txt,
  month_06_txt,
  month_07_txt,
  month_08_txt,
  month_09_txt,
  month_10_txt,
  month_11_txt,
  month_12_txt,
];
var iaical_monthNames2 = [
  month_2_01_txt,
  month_2_02_txt,
  month_2_03_txt,
  month_2_04_txt,
  month_2_05_txt,
  month_2_06_txt,
  month_2_07_txt,
  month_2_08_txt,
  month_2_09_txt,
  month_2_10_txt,
  month_2_11_txt,
  month_2_12_txt,
];
var iaical_shortNames = [
  month_3_01_txt,
  month_3_02_txt,
  month_3_03_txt,
  month_3_04_txt,
  month_3_05_txt,
  month_3_06_txt,
  month_3_07_txt,
  month_3_08_txt,
  month_3_09_txt,
  month_3_10_txt,
  month_3_11_txt,
  month_3_12_txt,
];
var shopCalendar = {
  getMonthDays: function (year, month) {
    return new Date(year, month, 0).getDate();
  },
  printDays: function (day, month, year, time, idek, num, holi) {
    var Working_days = window["Working_days"] || {};
    var tempdate = new Date(year, month - 1, day);
    tempdate.setDate(tempdate.getDate() + parseInt(time));
    if ($("#pickupl_calbind").length) {
      $("#pickupl_calbind").datepicker({
        defaultDate: tempdate,
        minDate: tempdate,
      });
    }
    if ($(idek + "1").length) {
      document.getElementById(idek + "1").onclick();
    }
    for (var i = 1; i <= num; i++) {
      _year = tempdate.getFullYear();
      _month = tempdate.getMonth() + 1;
      _day = tempdate.getDate();
      while (holi) {
        if (Holidays[_day + "_" + _month + "_" + _year]) {
          tempdate.setDate(tempdate.getDate() + 1);
          _year = tempdate.getFullYear();
          _month = tempdate.getMonth() + 1;
          _day = tempdate.getDate();
        } else {
          break;
        }
      }
      var loopCount = 100;
      if (!$.isEmptyObject(Working_days)) {
        while (--loopCount) {
          if ($.inArray(tempdate.getDay(), Working_days) == -1) {
            tempdate.setDate(tempdate.getDate() + 1);
          } else {
            _year = tempdate.getFullYear();
            _month = tempdate.getMonth() + 1;
            _day = tempdate.getDate();
            break;
          }
        }
      }
      _month = _month < 10 ? "0" + _month : _month;
      _day = _day < 10 ? "0" + _day : _day;
      if (!loopCount) {
        $("#" + idek + i + " input").val("-");
        $("#" + idek + i + " > div > *")
          .eq(1)
          .html("-");
        $("#" + idek + i + " > div > *")
          .eq(2)
          .html("");
      } else {
        $("#" + idek + i + " input").val([_year, _month, _day].join("-"));
        $("#" + idek + i + " > div > *")
          .eq(1)
          .html(_day);
        $("#" + idek + i + " > div > *")
          .eq(2)
          .html(iaical_monthNames2[parseInt(_month) - 1]);
      }
      tempdate.setDate(tempdate.getDate() + 1);
    }
  },
  setHolidays: function (date) {
    var Holidays = window["Holidays"] || {};
    var Working_days = window["Working_days"] || {};
    if (Holidays != null) {
      for (holiday in Holidays) {
        if (
          date.getDate() +
            "_" +
            (date.getMonth() + 1) +
            "_" +
            date.getFullYear() ==
          holiday
        ) {
          return [false, ""];
        }
      }
    }
    if (Working_days != null && Working_days.length) {
      var day = date.getDay();
      if ($.inArray(day, Working_days) == -1) {
        return [false, ""];
      }
    }
    return [true, ""];
  },
};
var menu_instalment_label = "";
var menu_instalment_singleproduct = "Oblicz raty tylko dla tego produktu";
var menu_instalment_multiproduct = "Oblicz raty produktów w koszyku ";
var menu_instalment_basketproduct = "Oblicz raty łącznie z wartością koszyka";
var menu_instalment_notall =
  "Nie wszystkie umieszczone w koszyku produkty umożliwią zakup tym systemem ratalnym. Przejdź do szczegółów każdego z produktów aby dowiedzieć się które z nich umożliwiają taki zakup. Jeżeli zdecydujesz się na zakup na raty, opłata za te produkty będzie musiała być wniesiona odrębnie pozostałymi sposobami płatności. ";
var menu_instalment_toomany =
  "W koszyku znajduje się zbyt duża ilość produktów aby móc opłacić zamówienie tym systemem ratalnym. Zmniejsz ilość produktów do ";
var menu_instalment_toomany2 =
  " aby móc skorzystać z systemu rat. Ilość sztuk jednego produktu nie jest limitowana.";
var menu_instalment_label_to = " to ";
var menu_instalment_label_minbasket =
  "Nie możesz uruchomić symulacji rat dla całego koszyka, ponieważ minimalna kwota umożliwiająca zakupy przez ";
var menu_instalment_text_min =
  "Zwiększ ilość sztuk produktu, aby uruchomić kalkulator rat";
var menu_instalment_text_minbasket =
  "Zwiększ ilość sztuk tego produktu, lub wrzuć do koszyka dodatkowe produkty.";
var menu_instalment_text_minb =
  "Zwiększ ilość produktów w koszyku, aby uruchomić kalkulator rat ";
var menu_instalment_label_max = "Maksymalna kwota umożliwiająca zakupy przez ";
var menu_instalment_label_maxbasket =
  "Nie możesz uruchomić symulacji rat dla całego koszyka, ponieważ maksymalna kwota umożliwiająca zakupy przez ";
var menu_instalment_text_max =
  "Zmniejsz ilość sztuk produktu, aby uruchomić kalkulator rat.";
var menu_instalment_text_maxbasket =
  "Zmniejsz ilość sztuk tego produktu, lub usuń z koszyka niektóre produkty.";
var menu_instalment_text_maxb =
  "Zmniejsz ilość produktów w koszyku, aby uruchomić kalkulator rat ";
var menu_instalment_label_min = "Minimalna kwota umożliwiająca zakupy przez ";
var button_class_dialog = "btn --solid --medium";
function calculate_instalments(
  min,
  max,
  priceTotal,
  alertbox,
  link,
  maxquantity,
  name,
  id
) {
  var id = id;
  var link = link;
  if (link.indexOf("{calculate_price}") != -1) {
    link = link.replace("{calculate_price}", "XXX");
  }
  if (!window["cena_raty"] || cena_raty == "") {
    eval(link);
  } else {
    if (id == "128" && $("#projector_form").length > 0) {
      eval(link.replace("XXX", cena_raty));
    } else {
      var startcalc = true;
      var inputcode = "";
      var sum_raty;
      var maxflag = false;
      if (priceTotal != "") {
        sum_raty = parseFloat(priceTotal) + parseFloat(cena_raty);
        sum_raty = sum_raty.toFixed(2);
      } else {
        sum_raty = parseFloat(koszyk_raty) + parseFloat(cena_raty);
        sum_raty = sum_raty.toFixed(2);
      }
      if (
        basket_count == 0 &&
        min != "" &&
        parseFloat(cena_raty) > parseFloat(min) &&
        max != "" &&
        parseFloat(cena_raty) < parseFloat(max)
      ) {
        eval(link.replace("XXX", cena_raty));
        return false;
      }
      if (min != "" && parseFloat(cena_raty) < parseFloat(min)) {
        inputcode =
          inputcode +
          '<div class="n54531_outline"><div class="n54531_outline_sub"><h3 class="return_label">' +
          menu_instalment_label_min +
          '<span class="' +
          name +
          '">' +
          name +
          "</span>" +
          menu_instalment_label_to +
          min +
          instalment_currency +
          "</h3></div></div>";
      } else if (max != "" && parseFloat(cena_raty) > parseFloat(max)) {
        inputcode =
          inputcode +
          '<div class="n54531_outline"><div class="n54531_outline_sub"><h3 class="return_label">' +
          menu_instalment_label_max +
          '<span class="' +
          name +
          '">' +
          name +
          "</span>" +
          menu_instalment_label_to +
          max +
          instalment_currency +
          "</h3></div></div>";
      }
      if ($("#projector_form").length > 0) {
        if (min != "" && parseFloat(cena_raty) < parseFloat(min)) {
          inputcode = inputcode + '<button class="';
          if (button_class_dialog === "") inputcode += "btn";
          else inputcode += button_class_dialog;
          inputcode +=
            ' disabled"  id="instalments_button_01">' +
            menu_instalment_singleproduct +
            '<span class="price_raty">' +
            cena_raty.toFixed(2) +
            instalment_currency +
            '</span><span class="info">' +
            menu_instalment_text_min +
            "</span></button>";
        } else if (max != "" && parseFloat(cena_raty) > parseFloat(max)) {
          inputcode = inputcode + '<button class="';
          if (button_class_dialog === "") inputcode += "btn";
          else inputcode += button_class_dialog;
          inputcode +=
            ' disabled"  id="instalments_button_01">' +
            menu_instalment_singleproduct +
            '<span class="price_raty">' +
            cena_raty.toFixed(2) +
            instalment_currency +
            '</span><span class="info">' +
            menu_instalment_text_max +
            "</span></button>";
        } else {
          inputcode = inputcode + '<button class="';
          if (button_class_dialog === "") inputcode += "btn";
          else inputcode += button_class_dialog;
          inputcode +=
            '"  id="instalments_button_01" onclick="' +
            link.replace("XXX", cena_raty) +
            '">' +
            menu_instalment_singleproduct +
            '<span class="price_raty">' +
            cena_raty.toFixed(2) +
            instalment_currency +
            "</span></button>";
        }
        if (basket_count != 0) {
          if (min != "" && parseFloat(sum_raty) < parseFloat(min)) {
            inputcode = inputcode + '<button class="';
            if (button_class_dialog === "") inputcode += "btn";
            else inputcode += button_class_dialog;
            inputcode +=
              ' disabled"  id="instalments_button_02">' +
              menu_instalment_basketproduct +
              '<span class="price_raty">' +
              sum_raty +
              instalment_currency +
              '</span><span class="info">' +
              menu_instalment_text_minb +
              "</span></button>";
          } else if (max != "" && parseFloat(sum_raty) > parseFloat(max)) {
            inputcode = inputcode + '<button class="';
            if (button_class_dialog === "") inputcode += "btn";
            else inputcode += button_class_dialog;
            inputcode +=
              ' disabled"  id="instalments_button_02">' +
              menu_instalment_basketproduct +
              '<span class="price_raty">' +
              sum_raty +
              instalment_currency +
              '</span><span class="info">' +
              menu_instalment_text_maxb +
              "</span></button>";
          } else {
            inputcode = inputcode + '<button class="';
            if (button_class_dialog === "") inputcode += "btn";
            else inputcode += button_class_dialog;
            inputcode +=
              '"  id="instalments_button_02" onclick="' +
              link.replace("XXX", sum_raty) +
              '">' +
              menu_instalment_basketproduct +
              '<span class="price_raty">' +
              sum_raty +
              instalment_currency +
              "</span></button>";
          }
        }
      }
      if ($("#container.basketedit_page").length > 0) {
        if (
          min != "" &&
          parseFloat(cena_raty) > parseFloat(min) &&
          max != "" &&
          parseFloat(cena_raty) < parseFloat(max)
        ) {
          eval(link.replace("XXX", cena_raty));
          return false;
        } else {
          if (min != "" && parseFloat(cena_raty) < parseFloat(min)) {
            inputcode = inputcode + '<button class="';
            if (button_class_dialog === "") inputcode += "btn";
            else inputcode += button_class_dialog;
            inputcode +=
              ' disabled"  id="instalments_button_02">' +
              menu_instalment_multiproduct +
              '<span class="price_raty">' +
              cena_raty.toFixed(2) +
              instalment_currency +
              '</span><span class="info">' +
              menu_instalment_text_minb +
              "</span></button>";
          } else if (max != "" && parseFloat(cena_raty) > parseFloat(max)) {
            inputcode = inputcode + '<button class="';
            if (button_class_dialog === "") inputcode += "btn";
            else inputcode += button_class_dialog;
            inputcode +=
              ' disabled"  id="instalments_button_02">' +
              menu_instalment_multiproduct +
              '<span class="price_raty">' +
              cena_raty.toFixed(2) +
              instalment_currency +
              '</span><span class="info">' +
              menu_instalment_text_maxb +
              "</span></button>";
          } else {
            inputcode = inputcode + '<button class="';
            if (button_class_dialog === "") inputcode += "btn";
            else inputcode += button_class_dialog;
            inputcode +=
              '"  id="instalments_button_02" onclick="' +
              link.replace("XXX", sum_raty) +
              '">' +
              menu_instalment_multiproduct +
              '<span class="price_raty">' +
              cena_raty.toFixed(2) +
              instalment_currency +
              "</span></button>";
          }
        }
      }
      startcalc = false;
      $("body").dialog({
        content: inputcode,
        wrapperClass: "instalment_dialog",
        fixed: false,
        fitToWindow: false,
      });
    }
  }
}
var menu_notice_txt1 = "Ok";
var menu_notice_txt2 = "Zamknij okno";
var ajax_loading_txt = "";
var menu_notice_button_cancel = "btn --solid button_cancel";
var menu_notice_button_confirm = "btn --solid button_confirm";
$(".confirmation_link").live("click", function () {
  var confirmbutton_txt = $(this).attr("data-button_txt")
    ? $(this).attr("data-button_txt")
    : menu_notice_txt1;
  if (menu_notice_button_cancel === "")
    var popup_d_buttons =
      '<div class="confirmation_popup_buttons"><button class="btn-small button_cancel" onclick="$(\'#dialog_close\').click();">' +
      menu_notice_txt2 +
      "</button>";
  else
    var popup_d_buttons =
      '<div class="confirmation_popup_buttons"><button class="' +
      menu_notice_button_cancel +
      '" onclick="$(\'#dialog_close\').click();">' +
      menu_notice_txt2 +
      "</button>";
  if ($(this).attr("data-button_txt")) {
    if (menu_notice_button_confirm === "")
      popup_d_buttons +=
        '<button class="btn-small button_confirm">' +
        confirmbutton_txt +
        "</button></div>";
    else
      popup_d_buttons +=
        '<button class="' +
        menu_notice_button_confirm +
        '">' +
        confirmbutton_txt +
        "</button></div>";
  }
  thisHref = $(this).attr("href");
  $("body").dialog({
    content: $(this).attr("title"),
    wrapperClass: "confirmation_popup",
  });
  if ($(this).attr("data-title"))
    $("#dialog_wrapper").prepend("<h2>" + $(this).attr("data-title") + "</h2>");
  $("#dialog_wrapper").append(popup_d_buttons);
  $(".confirmation_popup button.button_confirm").click(function () {
    self.location.href = thisHref;
  });
  return false;
});
app_shop.run(
  function () {
    $("#menu_notice").dialog({ wrappContent: "true" });
  },
  "all",
  ".menu_preolader_1"
);
app_shop.run(
  function () {
    $("a.orderdetails_info_cancel").removeAttr("onclick");
    $("a.orderdetails_info_cancel").click(function () {
      thisHref = $(this).attr("href");
      $("#menu_notice > strong").html(txt_orderdetails_info_message);
      $("#menu_notice").dialog({ wrappContent: "true" });
      $("#menu_notice button.prepaid_confirm").click(function () {
        self.location.href = thisHref;
      });
      return false;
    });
  },
  "all",
  ".menu_preolader_2"
);
app_shop.run(function () {
  iaiGet.snippets(
    function (json) {
      var Snippets = json.Snippets.response.items;
      for (var key in Snippets) {
        switch (Snippets[key].region) {
          case "head":
            $("head").append(Snippets[key].content);
            break;
          case "body_top":
            $("body").prepend(Snippets[key].content);
            break;
          default:
            $("body").append(Snippets[key].content);
            break;
        }
      }
    },
    {
      mobile: (app_shop.vars.view == 1).toString(),
      tablet: (app_shop.vars.view == 2).toString(),
      pc: (app_shop.vars.view >= 3).toString(),
      request_uri: app_shop.vars.request_uri,
      additional_ajax: app_shop.vars.additional_ajax,
    }
  );
  iaiGet.toplayersAndWidgets(
    function (json) {
      var ToplayersAndWidgets = json.ToplayersAndWidgets.response.items;
      for (var key in ToplayersAndWidgets) {
        if (key === "script") {
          eval(ToplayersAndWidgets[key]);
        } else {
          $("body").append(ToplayersAndWidgets[key].content);
        }
      }
    },
    {
      mobile: (app_shop.vars.view == 1).toString(),
      tablet: (app_shop.vars.view == 2).toString(),
      pc: (app_shop.vars.view >= 3).toString(),
      request_uri: app_shop.vars.request_uri,
      additional_ajax: app_shop.vars.additional_ajax,
    }
  );
}, "all");
app_shop.fn.setGrid = function () {
  switch (app_shop.vars.view) {
    case 4:
    case 3:
      $(".domHandler").each(function () {
        var name = $(this).data("item");
        $(this).after($(name));
        $(this).remove();
      });
      break;
    case 2:
    case 1:
      if (!$(".domHandler").length) {
        $(".setMobileGrid").each(function () {
          var name = $(this).data("item");
          $(name).before(
            '<del class="domHandler" data-item="' +
              name +
              '" style="display:none">'
          );
          $(this).append($(name));
        });
      }
      break;
  }
};
const filtersActionsCall = () => {
  $(".filters__options .--show-hidden").on(
    "click",
    function toggleHiddenElementsInContent() {
      const id = $(this).data("id");
      const content = `#${id}_content`;
      $(content).toggleClass("--shown");
      $(this).toggleClass("--shown");
      return false;
    }
  );
  $(".filters__toggler:not(.--not-expandable)").on(
    "click",
    function toggleVisibilityExpandMenu() {
      const id = $(this).data("id");
      const expand = `#${id}_expand`;
      $(expand).slideToggle("fast");
      $(this).toggleClass("--not-expanded");
      return false;
    }
  );
  $(".filters__item .f-control[type=checkbox]").on(
    "change",
    function showParentSubmitButtonOnChange() {
      const self = $(this);
      const element = self
        .parents(".filters__content:not(.--group)")
        .siblings()
        .find(".--submit.d-none");
      if (element.length) element.removeClass("d-none");
    }
  );
  $("#PriceRangeFrom, #PriceRangeTo").on(
    "keyup",
    function changeInputWidthOnKeyUp() {
      const self = $(this);
      const value = self.val();
      self.val(self.val().replace(/[^0-9]/g, ""));
      const inWidth = $.fn.textWidth(value, "14px Arial");
      self.width(inWidth + 10);
    }
  );
  $("#PriceRangeFrom, #PriceRangeTo").keyup();
  $("#filter_xpress_expand input").on(
    "change",
    function xpressCouriersInputChange() {
      const $this = $(this);
      app_shop.vars.clickedXPRESS = $this.attr("name").split("_")[1];
      if ($this.is(":checked") && $this.attr("data-localized") === "false") {
        $("body").dialog({
          width: 300,
          content: $("#xpress_toplayer").html(),
          wrapperClass: "xpress_zipcode_verification",
          fixed: false,
        });
      }
    }
  );
};
app_shop.run(
  function prepareFilterFunction() {
    app_shop.vars.filtersRef = new Filters({
      funcActionCall: filtersActionsCall,
      getQuantity: app_shop.vars.getQuantity || true,
    });
  },
  "all",
  "#Filters"
);
app_shop.run(
  function prepareXpressCouriersEvents() {
    app_shop.fn.xpressCouriersInit();
  },
  "all",
  "#xpress_toplayer"
);
const xpress_txt = {};
xpress_txt.zipcode_invalid = "Podany kod pocztowy jest nieprawidłowy.";
xpress_txt.localization = "Lokalizacja";
xpress_txt.courier_not_available =
  "Przykro nam, ale nasz ekspresowy kurier nie obsługuje tej okolicy. ";
xpress_txt.courier_not_available2 =
  "Twoje zamówienie zostanie dostarczone w standardowym czasie, a kuriera wybierzesz podczas składania zamówienia.";
xpress_txt.courier_not_available3 = "OK";
xpress_txt.ajax_error =
  "Wystąpił nieoczekiwany błąd. Proszę spróbować ponownie. ";
xpress_txt.geolocation_error =
  "Wystąpił błąd poczas sprawdzania kodu pocztowego. Proszę spróbować ponownie.";
xpress_txt.geolocation_error2 = "Nie można pobrać kodu pocztowego. ";
app_shop.run(
  function () {
    $("#menu_blog_bydates > ul > li > a").on("click", function () {
      if ($(this).next("ul")) {
        if ($(this).parent().hasClass("active")) {
          $(this).parent().removeClass("active");
        } else {
          $("#menu_blog_bydates > ul > li").removeClass("active");
          $(this).parent().addClass("active");
        }
        return false;
      }
    });
  },
  "all",
  "#menu_blog_bydates",
  true
);
app_shop.fn.rwdBanner("#menu_buttons3", [1, 2, 3, 4]);
if ($(".progress_bar_1.active").size()) {
  $("div.progress_bar_keeper").addClass("progress_bar_1_active");
} else if ($(".progress_bar_2.active").size()) {
  $("div.progress_bar_keeper").addClass("progress_bar_2_active");
} else if ($(".progress_bar_3.active").size()) {
  $("div.progress_bar_keeper").addClass("progress_bar_3_active");
} else if ($(".progress_bar_4.active").size()) {
  $("div.progress_bar_keeper").addClass("progress_bar_4_active");
}
var google_map_style_array = [
  {
    featureType: "landscape",
    stylers: [{ saturation: -100 }, { lightness: 65 }, { visibility: "on" }],
  },
  {
    featureType: "poi",
    stylers: [
      { saturation: -100 },
      { lightness: 51 },
      { visibility: "simplified" },
    ],
  },
  {
    featureType: "road.highway",
    stylers: [{ saturation: -100 }, { visibility: "simplified" }],
  },
  {
    featureType: "road.arterial",
    stylers: [{ saturation: -100 }, { lightness: 30 }, { visibility: "on" }],
  },
  {
    featureType: "road.local",
    stylers: [{ saturation: -100 }, { lightness: 40 }, { visibility: "on" }],
  },
  {
    featureType: "transit",
    stylers: [{ saturation: -100 }, { visibility: "simplified" }],
  },
  { featureType: "administrative.province", stylers: [{ visibility: "off" }] },
  {
    featureType: "water",
    elementType: "labels",
    stylers: [{ visibility: "on" }, { lightness: -25 }, { saturation: -100 }],
  },
  {
    featureType: "water",
    elementType: "geometry",
    stylers: [{ hue: "#ffff00" }, { lightness: -25 }, { saturation: -97 }],
  },
];
app_shop.run(
  function () {
    if ($("[data-ajaxLoad]").length) {
      app_shop.fn.hotspotAjaxInit(
        "",
        function () {},
        true,
        function () {
          $(".hotspot:not(.--list):not(.--slider)").each(
            function setHeightHotspot() {
              $(this)
                .find(".product__name")
                .setHeight($(this).find(".products"));
              $(this)
                .find(".product__prices")
                .setHeight($(this).find(".products"));
            }
          );
          if (app_shop.vars.view > 2) {
            $(".hotspot.--list").each(function setWidthHotspot() {
              let max = 0;
              $(this)
                .find(".product__price_wrapper")
                .each(function () {
                  max = Math.max(max, $(this).outerWidth());
                });
              $(this)
                .find(".product__price_wrapper")
                .removeAttr("style")
                .css("min-width", max);
            });
          }
          app_shop.vars.hotspot_slider = new HotspotSlider({
            selector: ".hotspot.--slider .products:not(.slick-initialized)",
            callbackBefore: (slider) => {
              slider.each(function hotspotSliderSetHeight() {
                $(this).find(".product__name").setHeight($(this));
                $(this).find(".product__prices").setHeight($(this));
              });
            },
          });
        }
      );
    }
  },
  [1, 2, 3, 4],
  "body",
  true
);
app_shop.run(
  function () {
    $(".hotspot:not(.--list):not(.--slider)").each(function setHeightHotspot() {
      $(this).find(".product__name").setHeight($(this).find(".products"));
      $(this).find(".product__prices").setHeight($(this).find(".products"));
    });
  },
  [1, 2, 3, 4],
  ".hotspot"
);
app_shop.run(
  function hotspotList() {
    if (app_shop.vars.view > 2) {
      $(".hotspot.--list").each(function setWidthHotspot() {
        let max = 0;
        $(this)
          .find(".product__price_wrapper")
          .each(function () {
            max = Math.max(max, $(this).outerWidth());
          });
        $(this)
          .find(".product__price_wrapper")
          .removeAttr("style")
          .css("min-width", max);
      });
    } else {
      $(".hotspot.--list .product__price_wrapper").removeAttr("style");
    }
  },
  [1, 2, 3, 4],
  ".hotspot.--list"
);
app_shop.run(
  function hotspotSlider() {
    app_shop.vars.hotspot_slider = new HotspotSlider({
      selector: ".hotspot.--slider .products:not(.slick-initialized)",
      callbackBefore: (slider) => {
        slider.each(function hotspotSliderSetHeight() {
          $(this).find(".product__name").setHeight($(this));
          $(this).find(".product__prices").setHeight($(this));
        });
      },
    });
  },
  "all",
  ".hotspot.--slider"
);
app_shop.run(
  function () {
    $("[data-tablet-class]").each(function () {
      $(this).removeClass($(this).attr("data-tablet-class"));
    });
    $("[data-mobile-class]").each(function () {
      $(this).removeClass($(this).attr("data-mobile-class"));
    });
    $("html").removeClass("_mobile");
  },
  [3, 4],
  "body",
  true
);
app_shop.run(
  function () {
    setTabletClass();
    $("#projector_form div.product_info").prepend($("div.product_info_top"));
    $("#projector_form h1").after($("div.projector_description"));
  },
  2,
  "body",
  true
);
app_shop.run(
  function () {
    setMobileClass();
    if ($("#n67367").length) {
      $("#n67367").before($("div.product_info_top"));
      $("#n67367").before($("div.projector_description"));
    } else {
      $("#projector_form div.product_info").append($("div.product_info_top"));
      $("#projector_form div.product_info").append(
        $("div.projector_description")
      );
    }
  },
  1,
  "body",
  true
);
app_shop.run(
  function () {
    $(".cm")
      .find("img.rwd-src")
      .each(function () {
        $this = $(this);
        $this.attr("src", app_shop.fn.getRwdSrc($this));
      });
  },
  [1, 2, 3, 4]
);
app_shop.run(function () {
  $("img.b-lazy").parents("a").addClass("loading");
  app_shop.vars.bLazy = new Blazy({
    breakpoints: [{ width: 420, src: "data-src-small" }],
    success: function (element) {
      setTimeout(function () {
        $(element).parents(".loading").removeClass("loading");
      }, 200);
    },
  });
  $(".form-group .form-control, .f-group .f-control").on(
    "change input focus blur",
    app_shop.fn.addFocused
  );
  setTimeout(() => {
    $(".form-group .form-control, .f-group .f-control").each(
      app_shop.fn.addFocused
    );
  }, 500);
  $(".f-group.--file .f-control").on("change", function () {
    var _this = $(this),
      _siblings = _this.siblings(".f-label");
    if (_this.val().length) {
      _siblings.addClass("--file");
      if (!_siblings.attr("data-label")) {
        _siblings.attr("data-label", _siblings.text());
      }
      _siblings.text(_this.val());
    } else {
      _siblings.removeClass("--file");
      _siblings.text(_siblings.attr("data-label"));
    }
  });
  $(".drop_down_label").append(" <span>");
  $(".drop_down_list > .active").each(function () {
    $(this)
      .parents(".drop_down_wrapper")
      .find(".drop_down_label span")
      .html($(this).html());
  });
  $(document).on("click touchstart", ".drop_down_label", function () {
    $(this).toggleClass("open_list");
    $(this).next(".drop_down_list").slideToggle();
  });
  $(".drop_down_list > *").live("click", function () {
    $(this)
      .parents(".drop_down_wrapper")
      .find(".drop_down_label span")
      .text($(this).text());
    $(this)
      .parents(".drop_down_wrapper")
      .find(".drop_down_label")
      .removeClass("open_list");
    $(this).parents(".drop_down_list").slideUp();
  });
  $("table.ui-responsive").each(function () {
    if ($(this).find("thead th").size()) {
      var tableTh = $.map($(this).find("thead tr th"), function (n, i) {
        return $(n).text();
      });
    } else {
      var tableTh = $.map($(this).find("thead tr td"), function (n, i) {
        return $(n).text();
      });
    }
    $(this)
      .find("tbody tr")
      .each(function () {
        $(this)
          .find("td:first")
          .replaceWith(function (i, html) {
            if (tableTh[0]) {
              return $("<th/>").html(
                '<b class="ui-table-cell-label">' + tableTh[0] + "</b>" + html
              );
            } else {
              return $("<th/>").html(html);
            }
          });
      });
    $(this)
      .find("tbody tr")
      .each(function () {
        $(this)
          .find("td")
          .each(function (i) {
            if (tableTh[i + 1]) {
              $(this).prepend(
                '<b class="ui-table-cell-label">' + tableTh[i + 1] + "</b>"
              );
            }
          });
      });
  });
  $(".align_row").iai_align();
  $("body").append($("#alert_cover"));
  $("body").backTop({ txt: '<i class="icon-chevron-up"></i>' });
}, "all");
app_shop.run(
  function changeArticleDate() {
    $(".article__date").each(function eachArticleDate() {
      const obj = $(this);
      const txt = app_shop.fn.news_data({
        data: obj.text(),
        month_names: iaical_shortNames,
        format: "<div>%d</div><span>%m</span>",
      });
      if (txt) obj.html(txt);
    });
  },
  "all",
  ".article__date"
);
app_shop.fn.fixed_scroll = (el, classToAdd) => {
  let oldVal = window.scrollY;
  const obj = window;
  window.addEventListener("scroll", function (e) {
    if (obj.scrollY > oldVal && obj.scrollY > 0) {
      !el.classList.contains(classToAdd) ? el.classList.add(classToAdd) : "";
    } else {
      el.classList.contains(classToAdd) ? el.classList.remove(classToAdd) : "";
    }
    oldVal = obj.scrollY;
  });
};
app_shop.run(
  function () {
    app_shop.fn.fixed_scroll(document.querySelector("html"), "scroll");
  },
  [1, 2],
  "#container"
);
app_shop.txt.txt_77752_1 =
  "Nie można wgrać pliku %s, ponieważ przekracza maksymalny dozwolony rozmiar %dMB.";
app_shop.txt.txt_77752_2 =
  "Nie można wgrać pliku %s, ponieważ załączanie plików tego typu jest niedozwolone.";
app_shop.txt.txt_77752_3 = "Dopuszczalne formaty zdjęć: .jpg.";
app_shop.txt.txt_77752_4 = "Maksymalny rozmiar zdjęcia to: %spx.";
var hotspotAjaxWrapType = "";
app_shop.txt.txt_validation1 = "Minimalna liczba znaków dla tego pola to ";
app_shop.txt.txt_validation2 = "Maksymalna liczba znaków dla tego pola to ";
app_shop.txt.txt_validation3 =
  "Błędnie wpisany e-mail. Wpisz pełny adres e-mail, np. jan@kowalski.com.";
app_shop.txt.txt_validation4 = "Te pole jest obowiązkowe.";
app_shop.txt.txt_validation5 =
  "Format numeru konta bankowego jest niepoprawny ";
app_shop.txt.txt_validation6 =
  "Numer telefonu powinien zawierać minimum 9 znaków ";
app_shop.txt.hotspot_prev = "Poprzedni z tej kategorii";
app_shop.txt.hotspot_next = "Następny z tej kategorii";
function ownKeys(object, enumerableOnly) {
  var keys = Object.keys(object);
  if (Object.getOwnPropertySymbols) {
    var symbols = Object.getOwnPropertySymbols(object);
    if (enumerableOnly)
      symbols = symbols.filter(function (sym) {
        return Object.getOwnPropertyDescriptor(object, sym).enumerable;
      });
    keys.push.apply(keys, symbols);
  }
  return keys;
}
function _objectSpread(target) {
  for (var i = 1; i < arguments.length; i++) {
    var source = arguments[i] != null ? arguments[i] : {};
    if (i % 2) {
      ownKeys(Object(source), true).forEach(function (key) {
        _defineProperty(target, key, source[key]);
      });
    } else if (Object.getOwnPropertyDescriptors) {
      Object.defineProperties(target, Object.getOwnPropertyDescriptors(source));
    } else {
      ownKeys(Object(source)).forEach(function (key) {
        Object.defineProperty(
          target,
          key,
          Object.getOwnPropertyDescriptor(source, key)
        );
      });
    }
  }
  return target;
}
function _defineProperty(obj, key, value) {
  if (key in obj) {
    Object.defineProperty(obj, key, {
      value: value,
      enumerable: true,
      configurable: true,
      writable: true,
    });
  } else {
    obj[key] = value;
  }
  return obj;
}
const Alertek = {
  alert_cover: "",
  cloudID: "",
  Start: (txt, mod) => {
    $("#alert_cover").remove();
    $("body").append(
      `<div id="alert_cover"class="alertek ${
        mod ? `${mod}` : ""
      }"style="display:none"onclick="Alertek.hide_alert();"><![CDATA[]]></div>`
    );
    if (!mod) {
      $("#alert_cover").addClass("menu_messages_message");
    }
    Alertek.cloudID = $("#alert_cover");
    if (txt) {
      Alertek.cloudID.html(txt);
      if (!mod) {
        const tempHeight = parseInt(
          $(window).height() / 2 -
            Alertek.cloudID.height() / 2 +
            $(window).scrollTop()
        );
        const tempWidth = parseInt(
          $(window).width() / 2 - Alertek.cloudID.width() / 2
        );
        Alertek.cloudID.css({
          top: tempHeight,
          marginLeft: tempWidth,
          left: 0,
        });
      }
      Alertek.cloudID.fadeIn(500);
      setTimeout(Alertek.End, 4000);
    }
  },
  End: () => {
    Alertek.cloudID.fadeOut(500);
  },
  Info: (txt) => {
    Alertek.Start(txt, "--info");
  },
  Warning: (txt) => {
    Alertek.Start(txt, "--warning");
  },
  Error: (txt) => {
    Alertek.Start(txt, "--error");
  },
  Success: (txt) => {
    Alertek.Start(txt, "--success");
  },
  show_alert: (txt) => {
    Alertek.Start(txt);
  },
  hide_alert: () => {
    Alertek.End();
  },
};
$(this).addClass($(this).attr("data-tablet-class"));
$("html").removeClass("_mobile");
app_shop.run(
  function () {
    setTimeout(function () {
      var cookieInfo = $.cookie("ck_cook");
      var userInfo = $.cookie("login");
      if (userInfo) {
        $.cookie("ck_cook", true, { expires: 30 });
        $("#ckdsclmrshtdwn").click();
      }
    }, 500);
  },
  "all",
  "body"
);
var IAI_Ajax = {
  Request: function (_url, pd, fun) {
    $.ajax({ type: "POST", url: _url, data: pd }).done(function (responseText) {
      if (fun) {
        if (fun.onSuccess) {
          if (fun.arg) {
            eval(
              fun.onSuccess + "('" + responseText + "', '" + fun.arg + "');"
            );
          } else {
            eval(fun.onSuccess + "('" + responseText + "');");
          }
        }
      }
    });
  },
};
app_shop.fn.addFocused = function addFocusedClassOnInput(event, selector) {
  const _this = selector ? $(selector) : $(this);
  if (
    _this.next().hasClass("control-label") ||
    _this.next().hasClass("f-label")
  ) {
    if (_this.val() != "") {
      _this.addClass("focused");
    } else {
      _this.removeClass("focused");
    }
  }
};
$.fn.textWidth = function getTextWidth(text, font) {
  if (!$.fn.textWidth.fakeEl)
    $.fn.textWidth.fakeEl = $("<span>").hide().appendTo(document.body);
  $.fn.textWidth.fakeEl
    .text(text || this.val() || this.text())
    .css("font", font || this.css("font"));
  return $.fn.textWidth.fakeEl.width();
};
const loadImageFromInput = (file) => {
  return new Promise((resolve, reject) => {
    const _URL = window.URL || window.webkitURL;
    const url = _URL.createObjectURL(file);
    const img = new Image();
    img.onload = () => resolve({ width: img.width, height: img.height });
    img.onerror = reject;
    img.src = url;
  });
};
$("input[type=file]").live("change", function () {
  if (!(window.File && window.FileReader && window.FileList && window.Blob))
    return false;
  const file = this.files[0];
  const { name, size, type } = file || {};
  const [extension] = name.split(".").reverse();
  const maxSize = $(this).data("max_filesize");
  const isValidSize = maxSize && size <= Number(maxSize);
  const isNoValidType =
    app_shop.vars.blacklist_mime && app_shop.vars.blacklist_mime.includes(type);
  const isNoValidExtension =
    app_shop.vars.blacklist_extension &&
    app_shop.vars.blacklist_extension.includes(extension);
  let alert = "";
  if (isNoValidType || (isNoValidExtension && app_shop.txt.txt_77752_2)) {
    alert = app_shop.txt.txt_77752_2.format(name);
  } else if (!isValidSize && app_shop.txt.txt_77752_1 && maxSize) {
    alert = app_shop.txt.txt_77752_1.format(
      name,
      (maxSize / 1048576).toFixed(2)
    );
  } else if ($(this).attr("name") === "opinion_photo") {
    if (extension !== "jpg" && app_shop.txt.txt_77752_3) {
      alert = app_shop.txt.txt_77752_3;
    } else if (app_shop.txt.txt_77752_4) {
      const maxImageWidth = 2048;
      const maxImageHeight = 1536;
      loadImageFromInput(file)
        .then((data) => {
          const { width, height } = data;
          if (width > maxImageWidth || height > maxImageHeight) {
            alert = app_shop.txt.txt_77752_4.format(
              `${maxImageWidth}x${maxImageHeight}`
            );
            $(this).val("");
            Alertek.Start(alert);
          }
        })
        .catch((error) => console.error(error));
    }
  }
  if (alert) {
    $(this).val("");
    Alertek.Start(alert);
    return false;
  }
});
$.fn.inView = function () {
  hh = $(window).scrollTop() + $(window).height();
  gg = $(this).position().top;
  if (hh + 100 > gg) {
    return true;
  } else {
    return false;
  }
};
(function ($) {
  function getViewportHeight() {
    var height = window.innerHeight;
    var mode = document.compatMode;
    if (mode || !$.support.boxModel) {
      height =
        mode == "CSS1Compat"
          ? document.documentElement.clientHeight
          : document.body.clientHeight;
    }
    return height;
  }
  $(window).scroll(function () {
    var vpH = getViewportHeight(),
      scrolltop = document.documentElement.scrollTop
        ? document.documentElement.scrollTop
        : document.body.scrollTop,
      elems = [];
    $.each($.cache, function () {
      if (this.events && this.events.inview) {
        elems.push(this.handle.elem);
      }
    });
    if (elems.length) {
      $(elems).each(function () {
        var $el = $(this),
          top = $el.offset().top,
          height = $el.height(),
          inview = $el.data("inview") || false;
        if (scrolltop > top + height || scrolltop + vpH < top) {
          if (inview) {
            $el.data("inview", false);
            $el.trigger("inview", [false]);
          }
        } else if (scrolltop < top + height) {
          if (!inview) {
            $el.data("inview", true);
            $el.trigger("inview", [true]);
          }
        }
      });
    }
  });
  $(function () {
    $(window).scroll();
  });
})(jQuery);
$.fn.getAjaxHotspot = app_shop.fn.hotspotAjaxInit = function (
  cols,
  callback,
  newWrapType,
  endInitCallback
) {
  var getHotspot = function ($this) {
    var currName = "";
    var currType = "";
    var currProdID =
      $("#projector_product_hidden").val() ||
      $("#projector_form").data("product_id") ||
      "";
    var productsIDS = [];
    if ($(".basketedit_page").length) {
      $(".productslist_item").each(function () {
        productsIDS.push($(this).find('input[name*="product"]').val());
      });
      $(".basket__block[data-product-id]").each(function () {
        productsIDS.push($(this).find('input[name*="product"]').val());
      });
    }
    ajax_hotspots.each(function () {
      var currHs = $(this);
      currName += currHs.attr("id") + ",";
      currType += currHs.data("pagetype") + ",";
    });
    currName = currName.replace(/,$/, "") || "";
    currType = currType.replace(/,$/, "") || "";
    if (!loaded)
      $.ajax({
        url:
          "/ajax/hotspots.php?action=get-hotspots-html&zones-names=" +
          currName +
          "&components=" +
          currName +
          "&zones-types=" +
          currType +
          "&product=" +
          currProdID +
          "&products=" +
          productsIDS.join(";"),
        dataType: "json",
        beforeSend: function () {
          loaded = true;
          ajax_hotspots.addClass("load-content loaded");
        },
        success: function (json) {
          ajax_hotspots.removeClass("load-content");
          $.each(json, function (key, value) {
            if (value) {
              var currTarget = $("#" + key);
              currTarget.replaceWith(value);
              if (app_shop.vars.bLazy) app_shop.vars.bLazy.revalidate();
              currTarget = $("#" + key);
              var targetWrapType = currTarget
                .find("div[data-wraptype]")
                .data("wraptype");
              var targetColNumber = currTarget
                .find("div[data-column]")
                .data("column");
              if (currTarget.find(".slickslider").length) {
                currTarget
                  .find(".slickslider")
                  .on("init", function () {
                    currTarget.find(".product__name").trunk8({ lines: 2 });
                    currTarget
                      .find(".product__cleardescription")
                      .trunk8({ lines: 3 });
                  })
                  .slick({ arrows: false });
                var current = currTarget
                  .find(".slickslider")
                  .slick("slickCurrentSlide");
                $("#slick-pager a[data-slick-index=" + current + "]").addClass(
                  "active"
                );
                currTarget
                  .find(".slickslider")
                  .on("beforeChange", function (event, slick, slide, next) {
                    $("#slick-pager .active").removeClass("active");
                    $("#slick-pager a[data-slick-index=" + next + "]").addClass(
                      "active"
                    );
                  });
                currTarget.find(".slickslider").on("afterChange", function () {
                  // if (
                  //   $("#main_hotspot_zone1 .slick-active img:not(.b-loaded)")
                  //     .length
                  // ) {
                  //   app_shop.vars.bLazy.revalidate();
                  // }
                });
                currTarget.find(".slickslider").on("setPosition", function () {
                  currTarget.find(".product__name").trunk8({ lines: 2 });
                  currTarget
                    .find(".product__cleardescription")
                    .trunk8({ lines: 3 });
                });
                $("#slick-pager a").off();
                $("#slick-pager a").on("click", function () {
                  currTarget
                    .find(".slickslider")
                    .slick("slickGoTo", $(this).data("slick-index"));
                  return false;
                });
              } else if (
                newWrapType === true &&
                targetWrapType &&
                targetColNumber
              ) {
                currTarget.find("div[data-column]").wrapProducts();
              } else if (currTarget.data("wrap") != "not" && cols) {
                if (hotspotAjaxWrapType)
                  currTarget
                    .find(".products_wrapper")
                    .separateElements({ numCol: cols });
                else
                  currTarget
                    .find(".products_wrapper")
                    .wrappTableLayout({ numCol: cols });
              }
              currTarget.find(".align_row").iai_align();
            } else $("#" + key).remove();
            if (callback) callback($("#" + key));
          });
          if (endInitCallback) endInitCallback();
        },
        error: function () {
          ajax_hotspots.removeClass("load-content");
          ajax_hotspots.remove();
        },
      });
  };
  var ajax_hotspots = $("[data-ajaxload=true]:not(.loaded)");
  var loaded = false;
  app_shop.vars.hotspot_ajax = [];
  ajax_hotspots.each(function () {
    app_shop.vars.hotspot_ajax.push($(this).attr("id"));
  });
  if (this[0]) {
    getHotspot(this[0]);
  } else {
    ajax_hotspots.bind("inview", function (event, visible) {
      if (visible == true) {
        getHotspot($(this));
        $(this).unbind("inview");
      }
    });
  }
};
(function ($) {
  $.fn.backTop = function (options) {
    var settings = $.extend(
      { speed: 500, txt: "&uarr;", id: "backTop", duration: 500 },
      options
    );
    $("#" + settings["id"]).remove();
    $("body").append(
      "<a id=" + settings["id"] + ">" + settings["txt"] + "</a>"
    );
    var backBtn = $("#" + settings["id"]);
    var position = 2 * window.innerHeight;
    var speed = settings["speed"];
    getRightOffset = function () {
      var offsetRight = 30;
      var freeSpace =
        ($(window).width() - $("#container").outerWidth()) * 0.5 -
        2 * offsetRight;
      if (freeSpace >= backBtn.outerWidth()) {
        offsetRight = freeSpace - backBtn.outerWidth() + offsetRight;
      }
      backBtn.css("right", offsetRight + "px");
    };
    getRightOffset();
    $(window).resize(function () {
      getRightOffset();
    });
    //     $(document).scroll(function () {
    //       var pos = window.scrollY
    //       if (pos >= position) {
    //         backBtn.fadeIn(speed);
    //       } else {
    //         backBtn.fadeOut(speed);
    //       }
    //     });
    //     backBtn.click(function () {
    //       $("html, body").animate(
    //         { scrollTop: 0 },
    //         { duration: settings["duration"] }
    //       );
    // });
  };
})(jQuery);
!(function (e, n, t) {
  function r(e, n) {
    return typeof e === n;
  }
  function o() {
    var e, n, t, o, i, s, a;
    for (var l in w)
      if (w.hasOwnProperty(l)) {
        if (
          ((e = []),
          (n = w[l]),
          n.name &&
            (e.push(n.name.toLowerCase()),
            n.options && n.options.aliases && n.options.aliases.length))
        )
          for (t = 0; t < n.options.aliases.length; t++)
            e.push(n.options.aliases[t].toLowerCase());
        for (o = r(n.fn, "function") ? n.fn() : n.fn, i = 0; i < e.length; i++)
          (s = e[i]),
            (a = s.split(".")),
            1 === a.length
              ? (Modernizr[a[0]] = o)
              : (!Modernizr[a[0]] ||
                  Modernizr[a[0]] instanceof Boolean ||
                  (Modernizr[a[0]] = new Boolean(Modernizr[a[0]])),
                (Modernizr[a[0]][a[1]] = o)),
            C.push((o ? "" : "no-") + a.join("-"));
      }
  }
  function i(e) {
    var n = b.className,
      t = Modernizr._config.classPrefix || "";
    if ((T && (n = n.baseVal), Modernizr._config.enableJSClass)) {
      var r = new RegExp("(^|\\s)" + t + "no-js(\\s|$)");
      n = n.replace(r, "$1" + t + "js$2");
    }
    Modernizr._config.enableClasses &&
      ((n += " " + t + e.join(" " + t)),
      T ? (b.className.baseVal = n) : (b.className = n));
  }
  function s(e, n) {
    if ("object" == typeof e) for (var t in e) j(e, t) && s(t, e[t]);
    else {
      e = e.toLowerCase();
      var r = e.split("."),
        o = Modernizr[r[0]];
      if ((2 == r.length && (o = o[r[1]]), "undefined" != typeof o))
        return Modernizr;
      (n = "function" == typeof n ? n() : n),
        1 == r.length
          ? (Modernizr[r[0]] = n)
          : (!Modernizr[r[0]] ||
              Modernizr[r[0]] instanceof Boolean ||
              (Modernizr[r[0]] = new Boolean(Modernizr[r[0]])),
            (Modernizr[r[0]][r[1]] = n)),
        i([(n && 0 != n ? "" : "no-") + r.join("-")]),
        Modernizr._trigger(e, n);
    }
    return Modernizr;
  }
  function a(e) {
    return e
      .replace(/([a-z])-([a-z])/g, function (e, n, t) {
        return n + t.toUpperCase();
      })
      .replace(/^-/, "");
  }
  function l() {
    return "function" != typeof n.createElement
      ? n.createElement(arguments[0])
      : T
      ? n.createElementNS.call(n, "http://www.w3.org/2000/svg", arguments[0])
      : n.createElement.apply(n, arguments);
  }
  function u(n, t, r) {
    var o;
    if ("getComputedStyle" in e) {
      o = getComputedStyle.call(e, n, t);
      var i = e.console;
      if (null !== o) r && (o = o.getPropertyValue(r));
      else if (i) {
        var s = i.error ? "error" : "log";
        i[s].call(
          i,
          "getComputedStyle returning null, its possible modernizr test results are inaccurate"
        );
      }
    } else o = !t && n.currentStyle && n.currentStyle[r];
    return o;
  }
  function f(e, n) {
    return !!~("" + e).indexOf(n);
  }
  function c(e, n) {
    return function () {
      return e.apply(n, arguments);
    };
  }
  function d(e, n, t) {
    var o;
    for (var i in e)
      if (e[i] in n)
        return t === !1
          ? e[i]
          : ((o = n[e[i]]), r(o, "function") ? c(o, t || n) : o);
    return !1;
  }
  function p() {
    var e = n.body;
    return e || ((e = l(T ? "svg" : "body")), (e.fake = !0)), e;
  }
  function h(e, t, r, o) {
    var i,
      s,
      a,
      u,
      f = "modernizr",
      c = l("div"),
      d = p();
    if (parseInt(r, 10))
      for (; r--; )
        (a = l("div")), (a.id = o ? o[r] : f + (r + 1)), c.appendChild(a);
    return (
      (i = l("style")),
      (i.type = "text/css"),
      (i.id = "s" + f),
      (d.fake ? d : c).appendChild(i),
      d.appendChild(c),
      i.styleSheet
        ? (i.styleSheet.cssText = e)
        : i.appendChild(n.createTextNode(e)),
      (c.id = f),
      d.fake &&
        ((d.style.background = ""),
        (d.style.overflow = "hidden"),
        (u = b.style.overflow),
        (b.style.overflow = "hidden"),
        b.appendChild(d)),
      (s = t(c, e)),
      d.fake
        ? (d.parentNode.removeChild(d), (b.style.overflow = u), b.offsetHeight)
        : c.parentNode.removeChild(c),
      !!s
    );
  }
  function v(e) {
    return e
      .replace(/([A-Z])/g, function (e, n) {
        return "-" + n.toLowerCase();
      })
      .replace(/^ms-/, "-ms-");
  }
  function m(n, r) {
    var o = n.length;
    if ("CSS" in e && "supports" in e.CSS) {
      for (; o--; ) if (e.CSS.supports(v(n[o]), r)) return !0;
      return !1;
    }
    if ("CSSSupportsRule" in e) {
      for (var i = []; o--; ) i.push("(" + v(n[o]) + ":" + r + ")");
      return (
        (i = i.join(" or ")),
        h(
          "@supports (" + i + ") { #modernizr { position: absolute; } }",
          function (e) {
            return "absolute" == u(e, null, "position");
          }
        )
      );
    }
    return t;
  }
  function g(e, n, o, i) {
    function s() {
      c && (delete k.style, delete k.modElem);
    }
    if (((i = r(i, "undefined") ? !1 : i), !r(o, "undefined"))) {
      var u = m(e, o);
      if (!r(u, "undefined")) return u;
    }
    for (
      var c, d, p, h, v, g = ["modernizr", "tspan", "samp"];
      !k.style && g.length;

    )
      (c = !0), (k.modElem = l(g.shift())), (k.style = k.modElem.style);
    for (p = e.length, d = 0; p > d; d++)
      if (
        ((h = e[d]),
        (v = k.style[h]),
        f(h, "-") && (h = a(h)),
        k.style[h] !== t)
      ) {
        if (i || r(o, "undefined")) return s(), "pfx" == n ? h : !0;
        try {
          k.style[h] = o;
        } catch (y) {}
        if (k.style[h] != v) return s(), "pfx" == n ? h : !0;
      }
    return s(), !1;
  }
  function y(e, n, t, o, i) {
    var s = e.charAt(0).toUpperCase() + e.slice(1),
      a = (e + " " + E.join(s + " ") + s).split(" ");
    return r(n, "string") || r(n, "undefined")
      ? g(a, n, o, i)
      : ((a = (e + " " + P.join(s + " ") + s).split(" ")), d(a, n, t));
  }
  function _(e, n, r) {
    return y(e, t, t, n, r);
  }
  var C = [],
    w = [],
    x = {
      _version: "3.5.0",
      _config: {
        classPrefix: "",
        enableClasses: !0,
        enableJSClass: !0,
        usePrefixes: !0,
      },
      _q: [],
      on: function (e, n) {
        var t = this;
        setTimeout(function () {
          n(t[e]);
        }, 0);
      },
      addTest: function (e, n, t) {
        w.push({ name: e, fn: n, options: t });
      },
      addAsyncTest: function (e) {
        w.push({ name: null, fn: e });
      },
    },
    Modernizr = function () {};
  (Modernizr.prototype = x), (Modernizr = new Modernizr());
  var S = x._config.usePrefixes
    ? " -webkit- -moz- -o- -ms- ".split(" ")
    : ["", ""];
  x._prefixes = S;
  var b = n.documentElement,
    T = "svg" === b.nodeName.toLowerCase(),
    z = "Moz O ms Webkit",
    P = x._config.usePrefixes ? z.toLowerCase().split(" ") : [];
  x._domPrefixes = P;
  var j;
  !(function () {
    var e = {}.hasOwnProperty;
    j =
      r(e, "undefined") || r(e.call, "undefined")
        ? function (e, n) {
            return n in e && r(e.constructor.prototype[n], "undefined");
          }
        : function (n, t) {
            return e.call(n, t);
          };
  })(),
    (x._l = {}),
    (x.on = function (e, n) {
      this._l[e] || (this._l[e] = []),
        this._l[e].push(n),
        Modernizr.hasOwnProperty(e) &&
          setTimeout(function () {
            Modernizr._trigger(e, Modernizr[e]);
          }, 0);
    }),
    (x._trigger = function (e, n) {
      if (this._l[e]) {
        var t = this._l[e];
        setTimeout(function () {
          var e, r;
          for (e = 0; e < t.length; e++) (r = t[e])(n);
        }, 0),
          delete this._l[e];
      }
    }),
    Modernizr._q.push(function () {
      x.addTest = s;
    }),
    Modernizr.addTest("canvas", function () {
      var e = l("canvas");
      return !(!e.getContext || !e.getContext("2d"));
    });
  var E = x._config.usePrefixes ? z.split(" ") : [];
  x._cssomPrefixes = E;
  var N = function (n) {
    var r,
      o = S.length,
      i = e.CSSRule;
    if ("undefined" == typeof i) return t;
    if (!n) return !1;
    if (
      ((n = n.replace(/^@/, "")),
      (r = n.replace(/-/g, "_").toUpperCase() + "_RULE"),
      r in i)
    )
      return "@" + n;
    for (var s = 0; o > s; s++) {
      var a = S[s],
        l = a.toUpperCase() + "_" + r;
      if (l in i) return "@-" + a.toLowerCase() + "-" + n;
    }
    return !1;
  };
  x.atRule = N;
  var L = (x.testStyles = h);
  L("#modernizr { width: 50vw; }", function (n) {
    var t = parseInt(e.innerWidth / 2, 10),
      r = parseInt(u(n, null, "width"), 10);
    Modernizr.addTest("cssvwunit", r == t);
  });
  var O = { elem: l("modernizr") };
  Modernizr._q.push(function () {
    delete O.elem;
  });
  var k = { style: O.elem.style };
  Modernizr._q.unshift(function () {
    delete k.style;
  }),
    (x.testAllProps = y);
  x.prefixed = function (e, n, t) {
    return 0 === e.indexOf("@")
      ? N(e)
      : (-1 != e.indexOf("-") && (e = a(e)), n ? y(e, n, t) : y(e, "pfx"));
  };
  (x.testAllProps = _),
    Modernizr.addTest("flexbox", _("flexBasis", "1px", !0)),
    Modernizr.addTest("touch", function () {
      var t;
      if (
        "ontouchstart" in e ||
        (e.DocumentTouch && n instanceof DocumentTouch)
      )
        t = !0;
      else {
        var r = [
          "@media (",
          S.join("touch-enabled),("),
          "heartz",
          ")",
          "{#modernizr{top:9px;position:absolute}}",
        ].join("");
        L(r, function (e) {
          t = 9 === e.offsetTop;
        });
      }
      return t;
    }),
    o(),
    i(C),
    delete x.addTest,
    delete x.addAsyncTest;
  for (var q = 0; q < Modernizr._q.length; q++) Modernizr._q[q]();
  e.Modernizr = Modernizr;
})(window, document);
(function ($) {
  $.fn.wrapProducts = function () {
    var that = $(this);
    that.each(function () {
      var $this = $(this);
      var dataColumn = $this.data("column");
      var wrapType = $this.data("wraptype");
      if (!dataColumn || dataColumn == "") return false;
      var regex = new RegExp(app_shop.vars.view + ":\\d");
      var currBreakpoint = dataColumn.match(regex)[0].split(":")[1];
      if (wrapType === "tableLayout")
        $this.wrappTableLayout({ numCol: parseInt(currBreakpoint) });
      else if (wrapType === "separateElements")
        $this.separateElements({ numCol: parseInt(currBreakpoint) });
    });
  };
})(jQuery);
(function (a) {
  a.fn.vertiscroll = function (b) {
    var c = a.extend(
      {
        width: 12,
        areawidth: 18,
        cover: 18,
        color: "#000",
        background: "transparent",
        cursor: "n-resize",
        areacursor: "pointer",
        radius: "12px 0 0 12px",
        animate: 400,
        footer: 2,
        fluid: false,
        hidden: false,
        mousemove: false,
        mousemovemode: "default",
        mousemoveresponse: 10,
        callBack: function () {},
      },
      b
    );
    return this.each(function (idn) {
      var K = a(this);
      K.wrap('<div class="overflow" />');
      var m = K.css("border-top-right-radius"),
        d = K.css("border-bottom-right-radius"),
        z = K.closest(".overflow"),
        B = K.css("float"),
        J = ["-width", "-style", "-color"],
        M = ["top", "right", "bottom", "left"],
        A,
        g,
        L,
        h = false,
        q = K.innerWidth(),
        p =
          parseInt(K.css("padding-right"), 10) +
          parseInt(K.css("padding-left"), 10),
        l = parseInt(K.css("top"), 10),
        t = parseInt(K.css("left"), 10),
        u = a("<div>", {
          class: "scrollbar",
          style:
            "position:absolute; right:0px; width:" +
            c.width +
            "px; cursor:" +
            c.cursor +
            "; background-color:" +
            c.color +
            ";",
        }).css({ borderRadius: c.radius }),
        w = a("<div>", {
          class: "scrollarea",
          style:
            "cursor:" +
            c.areacursor +
            "; position:absolute; height:100% ;z-index:2; top:0px; right:0px; width:" +
            c.areawidth +
            "px; background-color:" +
            c.background,
        })
          .css({ userSelect: "none" })
          .append(u)
          .appendTo(z);
      for (i = 0; i < c.footer; i++) {
        K.append("<br />");
      }
      for (i = 0; i < M.length; i++) {
        var O = "",
          r = K.css("margin-" + M[i]);
        for (j = 0; j < J.length; j++) {
          O += " " + K.css("border-" + M[i] + "" + J[j]);
        }
        z.css("margin-" + M[i], r).css("border-" + M[i], O);
      }
      z.css({
        overflow: "hidden",
        position: "relative",
        float: B,
        left: t,
        top: l,
        borderRadius: "0 " + m + " " + d + " 0",
      });
      K.css({
        overflow: "auto",
        "padding-right": "+=" + c.cover,
        margin: 0,
        border: 0,
        top: 0,
        left: 0,
      });
      function f() {
        var Q = K.scrollTop();
        u.css({ top: parseInt((Q / g) * A, 10), height: L });
      }
      function o() {
        A = K.innerHeight();
        g = K[0].scrollHeight;
        L = parseInt(A / (g / A), 10);
        z.height(A);
        if (c.fluid === true) {
          z.css({ width: "auto" });
          K.css({ width: z.innerWidth() - p });
        } else {
          z.css({ width: q });
        }
        f();
        if (g > A) {
          if (c.hidden === false) {
            w.show();
          }
        } else {
          w.hide();
        }
      }
      o();
      a(window)
        .load(function () {
          o();
        })
        .on("resize focus", function () {
          o();
          if (c.fluid === true) {
            K.css({ width: z.innerWidth() - p });
          }
        });
      var I = document.ontouchstart !== null ? "mousedown" : "touchstart";
      var C = document.ontouchmove !== null ? "mousemove" : "touchmove";
      var P = document.ontouchend !== null ? "mouseup" : "touchend";
      var e, D, F, s, x;
      u.on(I, function (Q) {
        Q.preventDefault();
        Q.stopPropagation();
        F = w.height();
        s = u.height();
        h = true;
        D = w.offset().top;
        e = u.offset().top - D;
        x = Q.pageY - a(this).offset().top;
        if (I === "touchstart") {
          x = Q.originalEvent.touches[0].pageY - a(this).offset().top;
          a(this).css({ opacity: 0.7 });
        }
        a(document).on("mousemove touchmove", y);
        a(document).on(P, function () {
          a(this).css({ opacity: 1 });
          N();
          setTimeout(function () {
            h = false;
          }, 24);
        });
      });
      function y(R) {
        var S = R.pageY - D - x;
        if (C === "touchmove") {
          var S = R.originalEvent.touches[0].pageY - D - x;
        }
        S = Math.min(Math.max(0, S), F - s);
        u.css({ top: S, opacity: 1 });
        var Q = u.position().top;
        K.scrollTop(parseInt((Q * g) / A, 10));
      }
      function N() {
        a(document).off(C, y);
        a(document).off(P, N);
      }
      K.scroll(function () {
        if (!h) {
          f();
        }
      });
      w.on("click", function (T) {
        T.preventDefault();
        if (!h) {
          T.stopPropagation();
          var R = T.pageY - a(this).offset().top,
            S = L / 2,
            Q = R - S;
          K.stop().animate({ scrollTop: (Q * g) / A }, c.animate);
        }
      });
      if (c.mousemove !== false) {
        var H = 0,
          G = 0,
          v,
          k,
          n = 0,
          E = function () {
            G += (H - G) / c.mousemoveresponse;
            var Q = Math.round(G * (g / A - 1));
            K.scrollTop(Q);
          };
        if (c.mousemovemode != "default") {
          n = A;
        }
        K.on("mousemove", function (Q) {
          clearTimeout(k);
          if (g > A) {
            H = Math.abs(Q.pageY - a(this).offset().top - n);
          }
        }).on("mouseenter mouseleave", function (Q) {
          if (Q.type == "mouseenter" && h !== true) {
            clearInterval(v);
            v = setInterval(E, 15);
          } else {
            k = setTimeout(function () {
              clearInterval(v);
            }, 50 * c.mousemoveresponse);
          }
        });
      }
      c.callBack();
    });
  };
})(jQuery);
(function ($) {
  $.fn.separateElements = function (options) {
    var settings = $.extend({ numCol: 4 }, options);
    return this.each(function () {
      $this = $(this);
      $this.find(".separator").remove();
      $this
        .find("> *:nth-child(" + settings.numCol + "n)")
        .after('<div class="clearfix separator">');
    });
  };
})(jQuery);
(function ($) {
  $.fn.wrappTableLayout = function (options) {
    var settings = $.extend(
      {
        numCol: 4,
        wrapper: '<div class="table_row">',
        tableClass: "table_wrapper",
        cellClass: "table_cell",
        wrapp: true,
      },
      options
    );
    return this.each(function () {
      $this = $(this);
      var $elements = $this.find("> *");
      if ($this.is("." + settings.tableClass)) {
        $this.removeClass(settings.tableClass);
        $elements.removeClass(settings.cellClass);
        $elements.find("> *").unwrap();
        $elements = $this.find("> *");
      }
      if (settings.wrapp) {
        $this.addClass(settings.tableClass);
        $elements.addClass(settings.cellClass);
        for (var i = 0, len = $elements.length; i < len; i += settings.numCol) {
          $elements.slice(i, i + settings.numCol).wrapAll(settings.wrapper);
        }
      }
    });
  };
})(jQuery);
(function (k, f) {
  "function" === typeof define && define.amd
    ? define(f)
    : "object" === typeof exports
    ? (module.exports = f())
    : (k.Blazy = f());
})(this, function () {
  function k(b) {
    var c = b._util;
    c.elements = v(b.o.selector);
    c.count = c.elements.length;
    c.destroyed &&
      ((c.destroyed = !1),
      b.o.container &&
        h(b.o.container, function (a) {
          l(a, "scroll", c.validateT);
        }),
      l(window, "resize", c.saveViewportOffsetT),
      l(window, "resize", c.validateT),
      l(window, "scroll", c.validateT));
    f(b);
  }
  function f(b) {
    for (var c = b._util, a = 0; a < c.count; a++) {
      var d = c.elements[a],
        g = d.getBoundingClientRect();
      if (
        (g.right >= e.left &&
          g.bottom >= e.top &&
          g.left <= e.right &&
          g.top <= e.bottom) ||
        n(d, b.o.successClass)
      )
        b.load(d), c.elements.splice(a, 1), c.count--, a--;
    }
    0 === c.count && b.destroy();
  }
  function q(b, c, a) {
    if (
      !n(b, a.successClass) &&
      (c || a.loadInvisible || (0 < b.offsetWidth && 0 < b.offsetHeight))
    )
      if ((c = b.getAttribute(p) || b.getAttribute(a.src))) {
        c = c.split(a.separator);
        var d = c[r && 1 < c.length ? 1 : 0],
          g = "img" === b.nodeName.toLowerCase();
        h(a.breakpoints, function (a) {
          b.removeAttribute(a.src);
        });
        b.removeAttribute(a.src);
        g || void 0 === b.src
          ? ((c = new Image()),
            (c.onerror = function () {
              a.error && a.error(b, "invalid");
              b.className = b.className + " " + a.errorClass;
            }),
            (c.onload = function () {
              g ? (b.src = d) : (b.style.backgroundImage = 'url("' + d + '")');
              b.className = b.className + " " + a.successClass;
              a.success && a.success(b);
            }),
            (c.src = d))
          : ((b.src = d), (b.className = b.className + " " + a.successClass));
      } else
        a.error && a.error(b, "missing"),
          n(b, a.errorClass) ||
            (b.className = b.className + " " + a.errorClass);
  }
  function n(b, c) {
    return -1 !== (" " + b.className + " ").indexOf(" " + c + " ");
  }
  function v(b) {
    var c = [];
    b = document.querySelectorAll(b);
    for (var a = b.length; a--; c.unshift(b[a]));
    return c;
  }
  function t(b) {
    e.bottom =
      (window.innerHeight || document.documentElement.clientHeight) + b;
    e.right = (window.innerWidth || document.documentElement.clientWidth) + b;
  }
  function l(b, c, a) {
    b.attachEvent
      ? b.attachEvent && b.attachEvent("on" + c, a)
      : b.addEventListener(c, a, !1);
  }
  function m(b, c, a) {
    b.detachEvent
      ? b.detachEvent && b.detachEvent("on" + c, a)
      : b.removeEventListener(c, a, !1);
  }
  function h(b, c) {
    if (b && c) for (var a = b.length, d = 0; d < a && !1 !== c(b[d], d); d++);
  }
  function u(b, c, a) {
    var d = 0;
    return function () {
      var g = +new Date();
      g - d < c || ((d = g), b.apply(a, arguments));
    };
  }
  var p, e, r;
  return function (b) {
    if (!document.querySelectorAll) {
      var c = document.createStyleSheet();
      document.querySelectorAll = function (a, b, d, e, f) {
        f = document.all;
        b = [];
        a = a.replace(/\[for\b/gi, "[htmlFor").split(",");
        for (d = a.length; d--; ) {
          c.addRule(a[d], "k:v");
          for (e = f.length; e--; ) f[e].currentStyle.k && b.push(f[e]);
          c.removeRule(0);
        }
        return b;
      };
    }
    var a = this,
      d = (a._util = {});
    d.elements = [];
    d.destroyed = !0;
    a.o = b || {};
    a.o.error = a.o.error || !1;
    a.o.offset = a.o.offset || 100;
    a.o.success = a.o.success || !1;
    a.o.selector = a.o.selector || ".b-lazy";
    a.o.separator = a.o.separator || "|";
    a.o.container = a.o.container
      ? document.querySelectorAll(a.o.container)
      : !1;
    a.o.errorClass = a.o.errorClass || "b-error";
    a.o.breakpoints = a.o.breakpoints || !1;
    a.o.loadInvisible = a.o.loadInvisible || !1;
    a.o.successClass = a.o.successClass || "b-loaded";
    a.o.validateDelay = a.o.validateDelay || 25;
    a.o.saveViewportOffsetDelay = a.o.saveViewportOffsetDelay || 50;
    a.o.src = p = a.o.src || "data-src";
    r = 1 < window.devicePixelRatio;
    e = {};
    e.top = 0 - a.o.offset;
    e.left = 0 - a.o.offset;
    a.revalidate = function () {
      k(this);
    };
    a.load = function (a, b) {
      var c = this.o;
      void 0 === a.length
        ? q(a, b, c)
        : h(a, function (a) {
            q(a, b, c);
          });
    };
    a.destroy = function () {
      var a = this._util;
      this.o.container &&
        h(this.o.container, function (b) {
          m(b, "scroll", a.validateT);
        });
      m(window, "scroll", a.validateT);
      m(window, "resize", a.validateT);
      m(window, "resize", a.saveViewportOffsetT);
      a.count = 0;
      a.elements.length = 0;
      a.destroyed = !0;
    };
    d.validateT = u(
      function () {
        f(a);
      },
      a.o.validateDelay,
      a
    );
    d.saveViewportOffsetT = u(
      function () {
        t(a.o.offset);
      },
      a.o.saveViewportOffsetDelay,
      a
    );
    t(a.o.offset);
    h(a.o.breakpoints, function (a) {
      if (a.width >= window.screen.width) return (p = a.src), !1;
    });
    k(a);
  };
});
(function () {
  $.fn.fancyList = function (opts) {
    var isMobile, settings;
    settings = $.extend(
      {
        forceMobile: true,
        buildHTML: true,
        fnClick: function () {},
        fnItemClick: function () {},
      },
      opts
    );
    isMobile = !!navigator.userAgent.match(/Mobile|webOS/i);
    isiOS = !!navigator.userAgent.match(/iP(hone|od|ad)/i);
    return this.each(function () {
      wrapper = $(this);
      options = wrapper.find("ul.options");
      wrapper.prepend('<select class="fancified">');
      sel = wrapper.find("select.fancified");
      options.find("li").each(function (i, opt) {
        opt = $(opt);
        var tekst = opt.data("title") || opt.html();
        return sel.append(
          '<option value="' +
            opt.attr("data-value") +
            '">' +
            tekst +
            "</option>"
        );
      });
      var copyOptionsToList,
        disabled,
        options,
        sel,
        trigger,
        updateTriggerText,
        wrapper;
      sel.addClass("fancified");
      sel.css({
        width: 1,
        height: 1,
        display: "block",
        position: "absolute",
        top: 0,
        left: 0,
        opacity: 0,
      });
      trigger = wrapper.find(".trigger");
      disabled = sel.prop("disabled");
      if (disabled) {
        wrapper.addClass("disabled");
      }
      updateTriggerText = function () {
        if (trigger.find("span").size()) {
          return trigger.find("span").text(sel.find(":selected").text());
        } else {
          return trigger.text(sel.find(":selected").text());
        }
      };
      wrapper.mouseenter(function () {
        trigger.addClass("hover");
      });
      wrapper.mouseleave(function () {
        trigger.removeClass("hover");
      });
      sel.on("blur", function () {
        if (trigger.hasClass("hover")) {
          return sel.focus();
        }
        if (trigger.hasClass("open")) {
          return setTimeout(function () {
            return trigger.trigger("close");
          }, 120);
        }
      });
      trigger.on("close", function () {
        trigger.removeClass("open");
        return options.removeClass("open");
      });
      trigger.on("click", function () {
        settings.fnClick(trigger, sel);
        var offParent, parent;
        if (!disabled) {
          trigger.toggleClass("open");
          if (trigger.hasClass("open")) {
            parent = trigger.parent();
            offParent = parent.offsetParent();
            if (
              parent.offset().top +
                parent.outerHeight() +
                options.outerHeight() +
                20 >
              $(window).height()
            ) {
              options.addClass("overflowing");
            } else {
              options.removeClass("overflowing");
            }
          }
          options.toggleClass("open");
          if (!isiOS) {
            return sel.focus();
          } else {
            if (options.hasClass("open")) {
              $("div.fancy-select div.trigger.open").removeClass("open");
              $("div.fancy-select ul.options.open").removeClass("open");
              options.addClass("open");
              trigger.addClass("open");
            } else {
              $("div.fancy-select div.trigger.open").removeClass("open");
              $("div.fancy-select ul.options.open").removeClass("open");
            }
          }
        }
      });
      sel.on("enable", function () {
        sel.prop("disabled", false);
        wrapper.removeClass("disabled");
        disabled = false;
        return copyOptionsToList();
      });
      sel.on("disable", function () {
        sel.prop("disabled", true);
        wrapper.addClass("disabled");
        return (disabled = true);
      });
      sel.on("change", function (e) {
        if (e.originalEvent && e.originalEvent.isTrusted) {
          return e.stopPropagation();
        } else {
          return updateTriggerText();
        }
      });
      sel.on("keydown", function (e) {
        var hovered, newHovered, w;
        w = e.which;
        hovered = options.find(".hover");
        hovered.removeClass("hover");
        if (!options.hasClass("open")) {
          if (w === 13 || w === 32 || w === 38 || w === 40) {
            e.preventDefault();
            return trigger.trigger("click");
          }
        } else {
          if (w === 38) {
            e.preventDefault();
            if (hovered.length && hovered.index() > 0) {
              hovered.prev().addClass("hover");
            } else {
              options.find("li:last-child").addClass("hover");
            }
          } else if (w === 40) {
            e.preventDefault();
            if (
              hovered.length &&
              hovered.index() < options.find("li").length - 1
            ) {
              hovered.next().addClass("hover");
            } else {
              options.find("li:first-child").addClass("hover");
            }
          } else if (w === 27) {
            e.preventDefault();
            trigger.trigger("click");
          } else if (w === 13 || w === 32) {
            e.preventDefault();
            hovered.trigger("click");
          } else if (w === 9) {
            if (trigger.hasClass("open")) {
              trigger.trigger("close");
            }
          }
          newHovered = options.find(".hover");
          if (newHovered.length) {
            options.scrollTop(0);
            return options.scrollTop(newHovered.position().top - 12);
          }
        }
      });
      options.on("click", "li", function () {
        settings.fnItemClick($(this));
        trigger.removeClass("hover");
        if (!isiOS) {
          sel.val($(this).data("value")).trigger("change").trigger("blur");
        } else {
          sel
            .val($(this).data("value"))
            .trigger("change")
            .trigger("blur")
            .trigger("focus");
        }
        return false;
      });
      options.on("mouseenter", "li", function () {
        var hovered, nowHovered;
        nowHovered = $(this);
        hovered = options.find(".hover");
        hovered.removeClass("hover");
        return nowHovered.addClass("hover");
      });
      options.on("mouseleave", "li", function () {
        return options.find(".hover").removeClass("hover");
      });
    });
  };
}.call(this));
(function () {
  var $;
  $ = window.jQuery || window.Zepto || window.$;
  $.fn.fancySelect = function (opts) {
    var isiOS, settings;
    if (opts == null) {
      opts = {};
    }
    settings = $.extend(
      {
        forceiOS: true,
        includeBlank: false,
        optionTemplate: function (optionEl) {
          return optionEl.text();
        },
        triggerTemplate: function (optionEl) {
          return optionEl.text();
        },
      },
      opts
    );
    isiOS = !!navigator.userAgent.match(/iP(hone|od|ad)/i);
    return this.each(function () {
      var copyOptionsToList,
        disabled,
        options,
        sel,
        trigger,
        updateTriggerText,
        wrapper;
      sel = $(this);
      if (sel.hasClass("fancified") || sel[0].tagName !== "SELECT") {
        return;
      }
      sel.addClass("fancified");
      sel.css({
        width: 1,
        height: 1,
        display: "block",
        position: "absolute",
        top: 0,
        left: 0,
        opacity: 0,
      });
      sel.wrap('<div class="fancy-select">');
      wrapper = sel.parent();
      if (sel.data("class")) {
        wrapper.addClass(sel.data("class"));
      }
      wrapper.append('<div class="trigger">');
      if (!(isiOS && !settings.forceiOS)) {
        wrapper.append('<ul class="options">');
      }
      trigger = wrapper.find(".trigger");
      options = wrapper.find(".options");
      disabled = sel.prop("disabled");
      if (disabled) {
        wrapper.addClass("disabled");
      }
      updateTriggerText = function () {
        var triggerHtml;
        triggerHtml = settings.triggerTemplate(sel.find(":selected"));
        return trigger.html(triggerHtml);
      };
      sel.on("blur.fs", function () {
        if (trigger.hasClass("open")) {
          return setTimeout(function () {
            return trigger.trigger("close.fs");
          }, 120);
        }
      });
      trigger.on("close.fs", function () {
        trigger.removeClass("open");
        return options.removeClass("open");
      });
      trigger.on("click.fs", function () {
        var offParent, parent;
        if (!disabled) {
          trigger.toggleClass("open");
          if (isiOS && !settings.forceiOS) {
            if (trigger.hasClass("open")) {
              return sel.focus();
            }
          } else {
            if (trigger.hasClass("open")) {
              parent = trigger.parent();
              offParent = parent.offsetParent();
              if (
                parent.offset().top +
                  parent.outerHeight() +
                  options.outerHeight() +
                  20 >
                $(window).height() + $(window).scrollTop()
              ) {
                options.addClass("overflowing");
              } else {
                options.removeClass("overflowing");
              }
            }
            options.toggleClass("open");
            if (!isiOS) {
              return sel.focus();
            }
          }
        }
      });
      sel.on("enable", function () {
        sel.prop("disabled", false);
        wrapper.removeClass("disabled");
        disabled = false;
        return copyOptionsToList();
      });
      sel.on("disable", function () {
        sel.prop("disabled", true);
        wrapper.addClass("disabled");
        return (disabled = true);
      });
      sel.on("change.fs", function (e) {
        if (e.originalEvent && e.originalEvent.isTrusted) {
          return e.stopPropagation();
        } else {
          return updateTriggerText();
        }
      });
      sel.on("keydown", function (e) {
        var hovered, newHovered, w;
        w = e.which;
        hovered = options.find(".hover");
        hovered.removeClass("hover");
        if (!options.hasClass("open")) {
          if (w === 13 || w === 32 || w === 38 || w === 40) {
            e.preventDefault();
            return trigger.trigger("click.fs");
          }
        } else {
          if (w === 38) {
            e.preventDefault();
            if (hovered.length && hovered.index() > 0) {
              hovered.prev().addClass("hover");
            } else {
              options.find("li:last-child").addClass("hover");
            }
          } else if (w === 40) {
            e.preventDefault();
            if (
              hovered.length &&
              hovered.index() < options.find("li").length - 1
            ) {
              hovered.next().addClass("hover");
            } else {
              options.find("li:first-child").addClass("hover");
            }
          } else if (w === 27) {
            e.preventDefault();
            trigger.trigger("click.fs");
          } else if (w === 13 || w === 32) {
            e.preventDefault();
            hovered.trigger("click.fs");
          } else if (w === 9) {
            if (trigger.hasClass("open")) {
              trigger.trigger("close.fs");
            }
          }
          newHovered = options.find(".hover");
          if (newHovered.length) {
            options.scrollTop(0);
            return options.scrollTop(newHovered.position().top - 12);
          }
        }
      });
      options.on("click.fs", "li", function (e) {
        var clicked;
        clicked = $(this);
        if (!clicked.is(".fs-disabled")) {
          sel.val(clicked.data("raw-value"));
          if (!isiOS) {
            sel.trigger("blur.fs").trigger("focus.fs");
          }
          options.find(".selected").removeClass("selected");
          clicked.addClass("selected");
          trigger.addClass("selected");
          return sel
            .val(clicked.data("raw-value"))
            .trigger("change.fs")
            .trigger("blur.fs")
            .trigger("focus.fs");
        }
      });
      options.on("mouseenter.fs", "li", function () {
        var hovered, nowHovered;
        nowHovered = $(this);
        hovered = options.find(".hover");
        hovered.removeClass("hover");
        return nowHovered.addClass("hover");
      });
      options.on("mouseleave.fs", "li", function () {
        return options.find(".hover").removeClass("hover");
      });
      copyOptionsToList = function () {
        var selOpts;
        updateTriggerText();
        if (isiOS && !settings.forceiOS) {
          return;
        }
        selOpts = sel.find("option");
        return sel.find("option").each(function (i, opt) {
          var optHtml;
          opt = $(opt);
          if (!opt.prop("disabled") && (opt.val() || settings.includeBlank)) {
            optHtml = settings.optionTemplate(opt);
            if (opt.prop("selected")) {
              return options.append(
                '<li data-raw-value="' +
                  opt.val() +
                  '" class="selected">' +
                  optHtml +
                  "</li>"
              );
            }
            if (opt.is(".disabled")) {
              return options.append(
                '<li class="fs-disabled" data-raw-value="' +
                  opt.val() +
                  '">' +
                  optHtml +
                  "</li>"
              );
            } else {
              return options.append(
                '<li data-raw-value="' + opt.val() + '">' + optHtml + "</li>"
              );
            }
          }
        });
      };
      sel.on("update.fs", function () {
        wrapper.find(".options").empty();
        return copyOptionsToList();
      });
      return copyOptionsToList();
    });
  };
}.call(this));
(function ($) {
  var methods,
    utils,
    SIDES = { center: "center", left: "left", right: "right" },
    WIDTH = { auto: "auto" };
  function trunk8(element) {
    this.$element = $(element);
    this.original_text = this.$element.html();
    this.settings = $.extend({}, $.fn.trunk8.defaults);
  }
  trunk8.prototype.updateSettings = function (options) {
    this.settings = $.extend(this.settings, options);
  };
  function truncate() {
    var data = this.data("trunk8"),
      settings = data.settings,
      width = settings.width,
      side = settings.side,
      fill = settings.fill,
      line_height = utils.getLineHeight(this) * settings.lines,
      str = data.original_text,
      length = str.length,
      max_bite = "",
      lower,
      upper,
      bite_size,
      bite;
    this.html(str);
    if (width === WIDTH.auto) {
      if (this.height() <= line_height) {
        return;
      }
      lower = 0;
      upper = length - 1;
      while (lower <= upper) {
        bite_size = lower + ((upper - lower) >> 1);
        bite = utils.eatStr(str, side, length - bite_size, fill);
        this.html(bite);
        if (this.height() > line_height) {
          upper = bite_size - 1;
        } else {
          lower = bite_size + 1;
          max_bite = max_bite.length > bite.length ? max_bite : bite;
        }
      }
      this.html("");
      this.html(max_bite);
      if (settings.tooltip) {
        this.attr("title", str);
      }
    } else if (!isNaN(width)) {
      bite_size = length - width;
      bite = utils.eatStr(str, side, bite_size, fill);
      this.html(bite);
      if (settings.tooltip) {
        this.attr("title", str);
      }
    } else {
      $.error('Invalid width "' + width + '".');
    }
  }
  methods = {
    init: function (options) {
      return this.each(function () {
        var $this = $(this),
          data = $this.data("trunk8");
        if (!data) {
          $this.data("trunk8", (data = new trunk8(this)));
        }
        data.updateSettings(options);
        truncate.call($this);
      });
    },
    update: function (new_string) {
      return this.each(function () {
        var $this = $(this);
        if (new_string) {
          $this.data("trunk8").original_text = new_string;
        }
        truncate.call($this);
      });
    },
    revert: function () {
      return this.each(function () {
        var text = $(this).data("trunk8").original_text;
        $(this).html(text);
      });
    },
    getSettings: function () {
      return this.get(0).data("trunk8").settings;
    },
  };
  utils = {
    eatStr: function (str, side, bite_size, fill) {
      var length = str.length,
        key = utils.eatStr.generateKey.apply(null, arguments),
        half_length,
        half_bite_size;
      if (utils.eatStr.cache[key]) {
        return utils.eatStr.cache[key];
      }
      if (typeof str !== "string" || length === 0) {
        $.error('Invalid source string "' + str + '".');
      }
      if (bite_size < 0 || bite_size > length) {
        $.error('Invalid bite size "' + bite_size + '".');
      } else if (bite_size === 0) {
        return str;
      }
      if (typeof (fill + "") !== "string") {
        $.error("Fill unable to be converted to a string.");
      }
      switch (side) {
        case SIDES.right:
          return (utils.eatStr.cache[key] =
            $.trim(str.substr(0, length - bite_size)) + fill);
        case SIDES.left:
          return (utils.eatStr.cache[key] =
            fill + $.trim(str.substr(bite_size)));
        case SIDES.center:
          half_length = length >> 1;
          half_bite_size = bite_size >> 1;
          return (utils.eatStr.cache[key] =
            $.trim(
              utils.eatStr(
                str.substr(0, length - half_length),
                SIDES.right,
                bite_size - half_bite_size,
                ""
              )
            ) +
            fill +
            $.trim(
              utils.eatStr(
                str.substr(length - half_length),
                SIDES.left,
                half_bite_size,
                ""
              )
            ));
        default:
          $.error('Invalid side "' + side + '".');
      }
    },
    getLineHeight: function (elem) {
      var $elem = $(elem),
        float = $elem.css("float"),
        position = $elem.css("position"),
        html = $elem.html(),
        wrapper_id = "line-height-test",
        line_height;
      if (float !== "none") {
        $elem.css("float", "none");
      }
      if (position === "absolute") {
        $elem.css("position", "static");
      }
      $elem.html("i").wrap('<div id="' + wrapper_id + '" />');
      line_height = $("#" + wrapper_id).innerHeight();
      $elem.html(html).css({ float: float, position: position }).unwrap();
      return line_height;
    },
  };
  utils.eatStr.cache = {};
  utils.eatStr.generateKey = function () {
    return Array.prototype.join.call(arguments, "");
  };
  $.fn.trunk8 = function (method) {
    if (methods[method]) {
      return methods[method].apply(
        this,
        Array.prototype.slice.call(arguments, 1)
      );
    } else if (typeof method === "object" || !method) {
      return methods.init.apply(this, arguments);
    } else {
      $.error("Method " + method + " does not exist on jQuery.trunk8");
    }
  };
  $.fn.trunk8.defaults = {
    fill: "&hellip;",
    lines: 1,
    side: SIDES.right,
    tooltip: true,
    width: WIDTH.auto,
  };
})(jQuery);
var responsiveSwitch = (function () {
  var h = parseInt(window.responsiveSwitchBreakpoint) || 1024;
  var a = "ResponsiveSwitch";
  var d = "content";
  var l = "data-rs";
  var g = "data-link-desktop";
  var e = "data-link-responsive";
  var o = "data-always-visible";
  var t = "rs-link";
  var p = "rs-link-to-desktop";
  var f = "rs-link-to-responsive";
  var b = "rs-link-inactive";
  var u = "rs-link-active";
  function s() {
    var v = document.querySelector('meta[name="viewport"]');
    if (v.getAttribute(l) == undefined) {
      v.setAttribute(l, v.getAttribute(d));
    }
    if (v.getAttribute(d) == v.getAttribute(l)) {
      document.cookie = a + "=true;path=/";
      if (document.documentElement.clientWidth != window.innerWidth) {
        document.location.href = i();
      } else {
        v.setAttribute(
          d,
          "width=" +
            h +
            "px, initial-scale=" +
            document.documentElement.clientWidth / h
        );
      }
    } else {
      document.cookie =
        a + "=false;path=/;expires=Thu, 01 Jan 1970 00:00:01 GMT";
      if (document.documentElement.clientWidth != window.innerWidth) {
        document.location.href = i();
      } else {
        v.setAttribute(d, v.getAttribute(l));
      }
    }
    return false;
  }
  var c = false;
  function m() {
    var w = document.querySelectorAll("." + t);
    for (var x = 0; x < w.length; x++) {
      var v = w[x];
      if (v != undefined) {
        n(v, f);
        n(v, p);
        n(v, b);
        n(v, u);
        if (k()) {
          j(v, f);
          j(v, u);
          v.innerHTML = v.getAttribute(e);
        } else {
          if (
            document.documentElement &&
            (document.documentElement.clientWidth < h ||
              v.getAttribute(o) == "true")
          ) {
            j(v, p);
            j(v, u);
            v.innerHTML = v.getAttribute(g);
          } else {
            j(v, b);
            v.innerHTML = "";
          }
        }
        if (!c) {
          v.addEventListener(
            "click",
            function (y) {
              y = y || window.event;
              y.preventDefault();
              q();
            },
            false
          );
        }
      }
    }
    c = true;
  }
  function q() {
    s();
    m();
  }
  function r() {
    if (k()) {
      s();
    }
    if (document.addEventListener) {
      document.addEventListener("DOMContentLoaded", m, false);
      document.addEventListener("orientationchange", m, false);
      window.addEventListener("resize", m, false);
    }
  }
  function k() {
    return document.cookie.search(a + "=true") > -1;
  }
  function j(w, v) {
    w.className += " " + v;
  }
  function n(w, v) {
    w.className = " " + w.className + " ";
    w.className = w.className.replace(" " + v + " ", "");
  }
  function i() {
    var v = new Date();
    var w = v.getTime();
    return (
      document.location.protocol +
      "//" +
      document.location.host +
      document.location.pathname +
      (window.location.search ? window.location.search + "&" : "?") +
      "rsTimestamp=" +
      w +
      document.location.hash
    );
  }
  r();
  return { toggle: q };
})();
$.fn.maxHeightO = function () {
  var max = 0;
  this.each(function () {
    max = Math.max(max, $(this).outerHeight());
  });
  return max;
};
$.fn.maxHeight = function () {
  var max = 0;
  this.height("auto");
  this.each(function () {
    max = Math.max(max, $(this).outerHeight());
  });
  this.height(max);
  return this;
};
function procesArrayFunctions(arr) {
  var i,
    z = 0;
  for (i = 0, z = arr.length; i < z; i++) {
    var wrapper = $(arr[i][1]);
    if (wrapper.size()) {
      arr[i][0]($(arr[i][1]));
    }
  }
}
var setMobileClass = function () {
  $("[data-tablet-class]").each(function () {
    $(this).removeClass($(this).attr("data-tablet-class"));
  });
  $("[data-mobile-class]").each(function () {
    $(this).addClass($(this).attr("data-mobile-class"));
  });
  $("html").addClass("_mobile");
};
var setTabletClass = function () {
  $("[data-mobile-class]").each(function () {
    $(this).removeClass($(this).attr("data-mobile-class"));
  });
  $("[data-tablet-class]").each(function () {
    $(this).addClass($(this).attr("data-tablet-class"));
  });
  $("html").removeClass("_mobile");
};
app_shop.formControl = {
  vars: {
    minLength: function (minLength) {
      return app_shop.txt.txt_validation1 + minLength + ".";
    },
    maxLength: function (maxLength) {
      return app_shop.txt.txt_validation2 + maxLength + ".";
    },
    email: app_shop.txt.txt_validation3,
    required: app_shop.txt.txt_validation4,
    bankAccount: app_shop.txt.txt_validation5,
    phone: app_shop.txt.txt_validation6,
  },
  patterns: {
    email: /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/,
  },
  timeHandle: "",
  ajaxValidation: function (obj, val, url, onSuccessCallback, onErrorCallback) {
    var param, that, parentObj, dataValidation, msg, ajaxType;
    that = this;
    parentObj = obj.parent();
    dataValidation = obj.data("validation");
    ajaxType = obj.data("ajaxtype");
    param = dataValidation + "=" + val;
    if (obj.data("serialize") && obj.data("serialize").indexOf("data-") > -1) {
      param += "&" + obj.attr(obj.data("serialize"));
    }
    if (val == "") {
      that.clearValidation(parentObj);
      that.resetRequiredClass(parentObj);
      return false;
    }
    if (ajaxType == "get") {
      $.get(
        url,
        param,
        function (json) {
          if (json.errno) {
            if (dataValidation == "bankAccount") msg = that.vars.bankAccount;
            that.addError(obj, msg);
            if (onErrorCallback) onErrorCallback();
          } else {
            that.addSuccess(obj);
            if (onSuccessCallback) onSuccessCallback();
          }
        },
        "json"
      );
    } else {
      $.post(
        url,
        param,
        function (json) {
          if (json.errno) {
            if (dataValidation == "bankAccount") msg = that.vars.bankAccount;
            that.addError(obj, msg);
            if (onErrorCallback) onErrorCallback();
          } else {
            that.addSuccess(obj);
            if (onSuccessCallback) onSuccessCallback();
          }
        },
        "json"
      );
    }
  },
  ajaxValidationWithData: function (
    url,
    data,
    onSuccessCallback,
    onErrorCallback
  ) {
    $.post(
      url,
      data,
      function (json) {
        if (json.errno != 0) {
          if (onErrorCallback) onErrorCallback(json);
        } else {
          if (onSuccessCallback) onSuccessCallback(json);
        }
      },
      "json"
    );
  },
  validate: function (obj, submitValidation) {
    var type,
      value,
      mailPattern,
      parentObj,
      minLength,
      maxLength,
      validCondition,
      validationUrl;
    parentObj = obj.parent();
    type = obj.attr("type");
    value = obj.val();
    mailPattern = this.patterns.email;
    minLength = obj.attr("minlength");
    maxLength = obj.attr("maxlength");
    validCondition = obj.data("validate");
    validationUrl = obj.data("validation-url");
    if (obj.attr("type") == "checkbox") {
      var checked = obj.is(":checked");
      if (checked) {
        obj
          .parents(".has-feedback, .f-feedback")
          .removeClass("has-error --error")
          .addClass("has-success --success");
      } else {
        obj
          .parents(".has-feedback, .f-feedback")
          .removeClass("has-success --success")
          .addClass("has-error --error");
      }
    } else {
      if (!validationUrl) {
        if (minLength) {
          if (value.length < minLength) {
            this.addError(obj, this.vars.minLength(minLength));
            return false;
          } else this.addSuccess(obj);
        }
        if (maxLength) {
          if (value.length > maxLength) {
            this.addError(obj, this.vars.minLength(maxLength));
            return false;
          } else {
            this.addSuccess(obj);
          }
        }
        if (type == "email") this.checkMail(obj);
        if (validCondition) {
          if (
            type == "text" &&
            (validCondition.indexOf("phone") > -1 ||
              validCondition.indexOf("email") > -1)
          ) {
            if ($.isNumeric(value)) {
              if (value.length < 9) this.addError(obj, this.vars.phone);
              else this.addSuccess(obj);
            } else if (validCondition.indexOf("email") > -1) {
              this.checkMail(obj);
            } else if (validCondition.indexOf("phone") > -1) {
              this.addError(obj, this.vars.phone);
            }
          }
        }
        if (!value && !submitValidation) {
          this.clearValidation(parentObj);
          this.resetRequiredClass(parentObj);
        }
      } else {
        this.ajaxValidation(obj, value, validationUrl);
      }
    }
  },
  checkMail: function (obj) {
    var value;
    value = obj.val();
    if (value.match(this.patterns.email)) this.addSuccess(obj);
    else this.addError(obj, this.vars.email);
  },
  checkForm: function (form, onlyErrors) {
    var inputs, checkbox, empty, required, error_item, that;
    inputs = form.find(
      "input.validate:enabled:visible, textarea.validate:enabled:visible, input.--validate:enabled:visible, textarea.--validate:enabled:visible"
    );
    checkbox = form
      .find('input[type="checkbox"]')
      .not("[disabled]")
      .not(":checked");
    empty = true;
    required = true;
    that = this;
    if (inputs.length) {
      inputs.each(function () {
        that.validate($(this), true);
      });
      this.resetRequiredClass(inputs);
      error_item = form.find(
        ".has-error:visible:first, .--error:visible:first"
      );
      if (error_item.length) {
        $("html, body").animate(
          {
            scrollTop:
              app_shop.vars.view < 3
                ? error_item.offset().top - 10 - $("header").outerHeight()
                : error_item.offset().top - 10,
          },
          300
        );
        return false;
      } else return true;
    }
    return true;
  },
  checkValidateFields: function (wrapper, onlyErrors) {
    var inputs = wrapper.find(
      "input.validate:enabled:visible, textarea.validate:enabled:visible, input.--validate:enabled:visible, textarea.--validate:enabled:visible"
    );
    var checkbox = wrapper
      .find("input#terms_agree[required]")
      .not("[disabled]")
      .not(":checked");
    var empty = true;
    var required = true;
    that = this;
    this.resetRequiredClass(inputs);
    if (inputs.size()) {
      inputs.each(function () {
        $this = $(this);
        empty = !$.trim($this.val());
        required = $this.is("[required]");
        if (required && empty) {
          that.addError($this);
          $this
            .parents(".form-group, .f-group")
            .find(" > div")
            .append(
              '<span class="help-block validate_message text-danger">' +
                app_shop.txt.txt_validation4 +
                "</span>"
            );
          checkbox.each(function () {
            that.addError($this);
          });
        }
      });
      that.resetRequiredClass(wrapper);
      var error_item = wrapper.find(
        ".has-error:visible:first, .--error:visible:first"
      );
      if (error_item.size()) {
        return false;
      }
    }
    return true;
  },
  addSuccess: function (obj) {
    this.clearValidation(obj.parent());
    this.removeErrorInfo(obj);
    obj = obj.is("[type=checkbox]")
      ? obj.parents("div.checkbox, .--checkbox")
      : obj.parent();
    obj.addClass("has-success --success");
  },
  addError: function (obj, info) {
    this.clearValidation(obj.parent());
    if (info) this.addErrorInfo(obj, info);
    obj = obj.is("[type=checkbox]")
      ? obj.parents("div.checkbox, .--checkbox")
      : obj.parent();
    obj.addClass("has-error --error");
  },
  clearValidation: function (obj) {
    this.removeErrorInfo(obj);
    obj.removeClass(
      "has-success has-error has-required --success --error --required"
    );
  },
  resetRequiredClass: function (obj) {
    obj
      .find("input.validate[required], input.--validate[required]")
      .parent()
      .not(
        ".has-success,.has-error,.checkbox, .--success, .--error, .--checkbox"
      )
      .addClass("has-required --required");
  },
  addErrorInfo: function (obj, info) {
    this.removeErrorInfo(obj);
    obj
      .parent()
      .append(
        '<span class="help-block validate_message text-danger">' +
          info +
          "</span>"
      );
  },
  removeErrorInfo: function (obj) {
    obj.children(".validate_message").remove();
  },
};
app_shop.fn.replaceSelects = function (elements, name, callbackOnChange) {
  elements.each(function (i) {
    var $select = $(this),
      number = i;
    ($selectValue = $select.val()), ($selectName = $select.attr("name"));
    $labelName = "";
    if ($select.data("label")) {
      $labelName = "<b>" + $select.data("label") + "</b>";
    }
    ($ul = $(
      '<div class="dropdown dropdownsearching form-group ' +
        $select.attr("class") +
        '"><ul class="dropdown-menu" aria-labelledby="' +
        name +
        number +
        '"></ul></div>'
    )),
      $select.children().each(function (i) {
        var $option = $(this);
        $li = $("<li>");
        var dataAttrs = new Array();
        $.each($option.data(), function (key, value) {
          var _data = "data-" + key + "=" + value;
          dataAttrs.push(_data);
        });
        if (dataAttrs.length) var $data = dataAttrs.join(" ");
        else var $data = "";
        $('<a data-index="' + i + '" ' + $data + ">")
          .attr("href", "#" + $option.attr("value"))
          .attr("data-value", $option.attr("value"))
          .text($option.text())
          .addClass($selectValue == $option.attr("value") ? "selected" : "")
          .appendTo($li);
        $li.appendTo($ul.find("ul"));
        if ($option.attr("class")) {
          $li.addClass($option.attr("class"));
        }
        if ($option.attr("data-price")) {
          $li.attr("data-price", $option.attr("data-price"));
        }
      });
    $ul
      .prepend(
        '<button id="' +
          name +
          number +
          '" class="form-control dropdown-toggle" data-indexcurrent="0" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">' +
          $labelName +
          "<span>" +
          $select.find("option:selected").text() +
          "</span></button>"
      )
      .prepend(
        '<input class="select_hidden searching_ajax" type="hidden" name="' +
          $selectName +
          '" value="' +
          $selectValue +
          '" />'
      );
    if (callbackOnChange)
      $ul.find("li").on("click.option", function () {
        callbackOnChange($(this));
      });
    $select.replaceWith($ul);
  });
};
app_shop.fn.dropdownClick = function ($elem) {
  var $curr = $elem.find("a");
  var $value = $curr.data("value");
  var $content = $curr.html();
  var $ul = $elem.parents(".dropdown");
  $ul.find("input").val($value);
  $ul.find("button span").html($content);
  $ul.find(".selected").removeClass("selected");
  $curr.addClass("selected");
};
app_shop.fn.dropdown = function selectToDropdown(
  elements,
  name,
  callbackOnChange
) {
  elements.each(function (i) {
    var $select = $(this),
      number = i;
    ($selectValue = $select.val()), ($selectName = $select.attr("name"));
    $labelName = "";
    if ($select.data("label")) {
      $labelName = "<b>" + $select.data("label") + "</b>";
    }
    ($ul = $(
      '<div class="f-dropdown f-group ' +
        $select.attr("class") +
        '"><ul class="f-dropdown-menu" aria-labelledby="' +
        name +
        number +
        '"></ul></div>'
    )),
      $select.children().each(function (i) {
        var $option = $(this);
        $li = $("<li>");
        var dataAttrs = new Array();
        $.each($option.data(), function (key, value) {
          var _data = "data-" + key + "=" + value;
          dataAttrs.push(_data);
        });
        if (dataAttrs.length) var $data = dataAttrs.join(" ");
        else var $data = "";
        $('<a data-index="' + i + '" ' + $data + ">")
          .attr("href", "#" + $option.attr("value"))
          .attr("data-value", $option.attr("value"))
          .text($option.text())
          .addClass($selectValue == $option.attr("value") ? "selected" : "")
          .appendTo($li);
        $li.appendTo($ul.find("ul"));
        if ($option.attr("class")) {
          $li.addClass($option.attr("class"));
        }
        if ($option.attr("data-price")) {
          $li.attr("data-price", $option.attr("data-price"));
        }
      });
    $ul
      .prepend(
        '<button id="' +
          name +
          number +
          '" class="f-control f-dropdown-toggle" data-indexcurrent="0" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">' +
          $labelName +
          "<span>" +
          $select.find("option:selected").text() +
          "</span></button>"
      )
      .prepend(
        '<input class="select_hidden searching_ajax" type="hidden" name="' +
          $selectName +
          '" value="' +
          $selectValue +
          '" />'
      );
    if (callbackOnChange)
      $ul.find("li").on("click.option", function () {
        callbackOnChange($(this));
      });
    $select.replaceWith($ul);
  });
};
app_shop.fn.clickDropdown = function clickDropdown($elem, $submit) {
  var $curr = $elem.find("a");
  var $value = $curr.data("value");
  var $content = $curr.html();
  var $ul = $elem.parents(".f-dropdown");
  var $form = $elem.parents("form");
  $ul.find("input").val($value);
  $ul.find("button span").html($content);
  $ul.find(".selected").removeClass("selected");
  $curr.addClass("selected");
  if ($submit) $elem.parents("form").submit();
};
$.fn.setHeight = function (container) {
  var numCol = Math.round(
      container.outerWidth(true) / container.children().outerWidth(true)
    ),
    numChild = container.children().length;
  if (numCol > 0) {
    for (var i = 0; i < numChild; i += numCol) {
      var child = container.children().slice(i, i + numCol);
      if (child.find(this).length) child = child.find(this);
      child.removeAttr("style");
      child.css("min-height", child.maxHeightO());
    }
  }
};
const HotspotSlider = function HotspotSlider(params) {
  this.params = params;
  this.defaults = {
    prevArrow:
      '<button type="button" class="slick-prev slick-custom-prev"></button>',
    nextArrow:
      '<button type="button" class="slick-next  slick-custom-next"></button>',
    // dotsClass: "hotspot__dots",
    arrows: true,
    // dots: true,
     infinite: true,
    dots: false,
    slidesToShow: 4,
    slidesToScroll: 4,
    responsive: [
      { breakpoint: 978, settings: { slidesToShow: 3, slidesToScroll: 3 } },
      { breakpoint: 650, settings: { slidesToShow: 2, slidesToScroll: 2 } },
    ],
  };
  this.init = () => {
    const { selector, options, callbackBefore, callbackAfter } = this.params;
    this.settings = _objectSpread({}, this.defaults, {}, options);
    this.selector = selector;

    this.slider = $(selector);
    if (typeof callbackBefore === "function") callbackBefore(this.slider);

    this.slider.on("afterChange", function slickAfterScroll() {
      if (app_shop.vars.bLazy) app_shop.vars.bLazy.revalidate();
    });
    this.slider.slick(this.settings);
    if (typeof callbackAfter === "function") callbackAfter(this.slider);
  };
  this.reset = () => {
    if (this.slider) this.slider.slick("unslick");
    this.init(this.params);
  };
  this.destroy = () => {
    if (this.slider) this.slider.slick("unslick");
  };
  return this.init();
};
const SelectToDropdown = function selectToDropdown(params) {
  this.params = params;
  this.init = () => {
    const {
      selector,
      generateDropdownCallback,
      clickDropdownCallback,
      afterClickDropdownCallback,
    } = this.params;
    this.selects = document.querySelectorAll(selector);
    this.generateDropdownCallback = generateDropdownCallback;
    this.clickDropdownCallback = clickDropdownCallback;
    this.afterClickDropdownCallback = afterClickDropdownCallback;
    if (this.selects.length) {
      this.generateDropdown();
      document.addEventListener("click", this.closeDropdown);
    }
  };
  this.generateDropdown = () => {
    this.selects.forEach((element) => {
      const content = `<div class="f-dropdown f-group ${element.getAttribute(
        "class"
      )}"><button class="f-control f-dropdown-toggle${
        element.hasAttribute("disabled") ? " --disabled" : ""
      }"data-indexcurrent="${element.options[element.selectedIndex].index}">${
        element.hasAttribute("data-label")
          ? `<strong class="f-dropdown-label">${element.getAttribute(
              "data-label"
            )}</strong>`
          : ""
      }<span class="f-dropdown-button">${
        element.options[element.selectedIndex].text
      }</span></button><ul class="f-dropdown-menu">${[
        ...element.querySelectorAll("option"),
      ]
        .map(
          (el, index) =>
            `<li class="f-dropdown-li${
              el.hasAttribute("class") ? ` ${el.getAttribute("class")}` : ""
            }"><a class="f-dropdown-item${
              el.hasAttribute("selected") ? " --selected" : ""
            }"href="#${el.getAttribute(
              "value"
            )}"data-index="${index}"data-value="${el.getAttribute(
              "value"
            )}"${Object.keys(el.dataset)
              .map((dataAttr) => `data-${dataAttr}="${el.dataset[dataAttr]}"`)
              .join("")}>${el.innerHTML}</a></li>`
        )
        .join("")}</ul></div>`;
      const dropdownElement = document.createElement("div");
      dropdownElement.innerHTML = content;
      const dropdown = dropdownElement.firstChild;
      element.insertAdjacentElement("afterend", dropdown);
      dropdown.insertBefore(element, dropdown.firstChild);
      Object.values(element.classList).forEach((className) =>
        element.classList.replace(className, `${className}-select`)
      );
      this.openDropdown(dropdown);
      this.clickDropdown(dropdown);
      this.mobileView(dropdown);
      if (this.generateDropdownCallback)
        this.generateDropdownCallback(dropdown);
    });
  };
  this.mobileView = (dropdown) => {
    dropdown
      .querySelector("select")
      .addEventListener("change", function mobileViewClick() {
        const optionIndex = this.selectedIndex;
        dropdown.querySelectorAll(".f-dropdown-li").forEach((element) => {
          if (
            parseInt(
              element
                .querySelector(".f-dropdown-item")
                .getAttribute("data-index"),
              10
            ) === optionIndex
          ) {
            element.click();
          }
        });
      });
  };
  this.openDropdown = (dropdown) => {
    dropdown
      .querySelector("button.f-dropdown-toggle")
      .addEventListener("click", function DropdownToggle(e) {
        e.preventDefault();
        if (!this.classList.contains("--disabled"))
          this.parentNode.classList.toggle("--open");
        else return false;
      });
  };
  this.closeDropdown = (e) => {
    document.querySelectorAll(".f-dropdown").forEach((element) => {
      if (!element.classList.contains("--open")) return false;
      if (
        e &&
        e.type === "click" &&
        element !== e &&
        element.contains(e.target)
      )
        return false;
      element.classList.remove("--open");
    });
  };
  this.clickDropdown = (dropdown) => {
    if (!this.clickDropdownCallback) {
      const afterClick = this.afterClickDropdownCallback;
      dropdown.querySelectorAll(".f-dropdown-li").forEach((element) => {
        element.addEventListener("click", function clickDropdown(e) {
          e.preventDefault();
          const currentLink = this.querySelector(".f-dropdown-item");
          const allLink = dropdown.querySelectorAll(".f-dropdown-item");
          const currentIndex = currentLink.getAttribute("data-index");
          const currentContent = currentLink.innerHTML;
          const select = dropdown.querySelector("select");
          const button = dropdown.querySelector("button.f-dropdown-toggle");
          const buttonContent = button.querySelector(".f-dropdown-button");
          allLink.forEach((selected) =>
            selected.classList.remove("--selected")
          );
          currentLink.classList.add("--selected");
          select.selectedIndex = currentIndex;
          buttonContent.innerHTML = currentContent;
          button.setAttribute(
            "data-indexcurrent",
            currentLink.getAttribute("data-index")
          );
          dropdown.classList.remove("--open");
          if (afterClick) afterClick(this);
        });
      });
    } else {
      this.clickDropdownCallback(dropdown);
    }
  };
  return this.init();
};
app_shop.fn.changeLiteral = (value, numerals, wovalue) => {
  const t0 = value % 10;
  const t1 = value % 100;
  const vo = [];
  if (wovalue !== true) vo.push(value);
  if (value === 1 && numerals[1]) vo.push(numerals[1]);
  else if (
    (value === 0 ||
      (t0 >= 0 && t0 <= 1) ||
      (t0 >= 5 && t0 <= 9) ||
      (t1 > 10 && t1 < 20)) &&
    numerals[0]
  )
    vo.push(numerals[0]);
  else if ((t1 < 10 || t1 > 20) && t0 >= 2 && t0 <= 4 && numerals[2])
    vo.push(numerals[2]);
  return vo.join(" ");
};
app_shop.txt.redirectionDisabled = "Choose your language and country";
app_shop.txt.redirectionOff = "true";
app_shop.run(
  function initRedirections() {
    const linkParams = new URL(document.location).searchParams;
    const redirection = document.querySelector(".redirection");
    const button = redirection.querySelector(".redirection__button");
    let redirectionOff;
    app_shop.txt.redirectionOff === "true"
      ? (redirectionOff = true)
      : (redirectionOff = false);
    if (redirectionOff) button.href = button.href + "?redirection=redirected";
    if (
      linkParams.has("redirection") &&
      linkParams.get("redirection") === "redirected"
    ) {
      redirection.remove();
      document.cookie = "redirection=closed";
    } else {
      if (document.cookie.indexOf("redirection=closed") >= 0) {
        redirection.remove();
      } else {
        redirection.classList.remove("d-none");
        redirection
          .querySelectorAll(".redirection__language > strong")
          .forEach((strong) => {
            strong.addEventListener("click", () => {
              redirection
                .querySelectorAll(".redirection__language")
                .forEach((language) => {
                  language.classList.remove("--active");
                });
              strong.parentNode.classList.add("--active");
              redirection
                .querySelectorAll(".redirection__language:not(.--active) input")
                .forEach((input) => {
                  input.checked = false;
                });
              if (
                !redirection.querySelectorAll(
                  ".redirection__language input:checked"
                ).length
              ) {
                button.classList.add("--disabled");
              }
            });
          });
        redirection.querySelectorAll("input").forEach((input) => {
          input.addEventListener("change", () => {
            button.classList.remove("--disabled");
            button.href = input.dataset.link;
            if (redirectionOff)
              button.href = button.href + "?redirection=redirected";
          });
        });
        button.addEventListener("click", (e) => {
          if (button.classList.contains("--disabled")) {
            e.preventDefault();
            Alertek.Info(app_shop.txt.redirectionDisabled);
          }
        });
        redirection
          .querySelectorAll(".redirection__close, .redirection__background")
          .forEach((close) => {
            close.addEventListener("click", () => {
              redirection.remove();
            });
          });
        redirection
          .querySelectorAll(
            ".redirection__button, .redirection__close, .redirection__background"
          )
          .forEach((cookieToggler) => {
            cookieToggler.addEventListener("click", () => {
              document.cookie = "redirection=closed";
            });
          });
      }
    }
  },
  "all",
  ".redirection"
);
app_shop.run(
  function () {
    $("#menu_search label").on("click", function () {
      $("html").addClass("search_open");
      $("#menu_search input").focus();
    });
    $("#menu_search a").on("click", function () {
      if (app_shop.vars.view <= 2) {
        $("html").removeClass("search_open");
        return false;
      }
    });
    $("#menu_search input").on("keyup", function () {
      if ($(this).val().length < 4 && $(".ui-autocomplete > li").length) {
        $(".ui-autocomplete").hide();
        $(".ui-autocomplete > li").remove();
      }
    });
  },
  "all",
  "#menu_search"
);
app_shop.run(
  function () {
    let obj = $(window)[0];
    let el = $("html");
    $(window).on("scroll", function (e) {
      if (obj.scrollY > 0) {
        el.addClass("scroll_down");
      } else {
        el.removeClass("scroll_down");
      }
    });
  },
  [1, 2],
  ".main_page #menu_search"
);
var txt_quick_search = [];
txt_quick_search["price_netto"] = "";
txt_quick_search["produkty"] = "";
txt_quick_search["kategorie"] = "Kategorie ";
txt_quick_search["producenci"] = "";
txt_quick_search["serie"] = "";
txt_quick_search["cms"] = "Informacje";
txt_quick_search["produkty_before"] = "";
txt_quick_search["kategorie_before"] = "";
txt_quick_search["producenci_before"] = "Producent: ";
txt_quick_search["serie_before"] = "Seria:  ";
txt_quick_search["cms_before"] = "";
txt_quick_search["more"] = "";
txt_quick_search["sep"] = " / ";
txt_quick_search["szukaj"] = "Wyszukaj";
$.widget("custom.catcomplete", $.ui.autocomplete, {
  _resizeMenu: function (obj) {
    this.menu.element.outerWidth(this.element.outerWidth());
  },
  _renderMenu: function (ul, items) {
    currentCategory = "";
    $.each(items, function (index, item) {
      if (item.label) {
        if (item.category && item.category != currentCategory) {
          ul.append(
            "<li class='ui-autocomplete-category'>" + item.category + "</li>"
          );
          currentCategory = item.category;
        }
        oneElement =
          '<a  class="table ' + item.id + '" href="' + item.link + '">';
        if (item.icon != "") {
          oneElement +=
            '<span class="table_cell autocomplete_icon"><img width="30" src="' +
            item.icon +
            '"/></span>';
        }
        if (item.label != "") {
          var elementName = item.label;
          if (item.beforeName != "") {
            elementName = item.beforeName + elementName;
          }
          oneElement +=
            '<span class="table_cell autocomplete_name">' +
            elementName +
            "</span>";
        }
        if (item.price != "") {
          oneElement +=
            '<span class="table_cell autocomplete_price">' +
            item.price +
            "</span>";
        }
        oneElement += "</a>";
        $('<li class="ui-menu-item" role="menuitem"></li>')
          .data("item.autocomplete", item)
          .append(oneElement)
          .appendTo(ul);
      }
    });
    $(".ui-autocomplete .ui-autocomplete-category")
      .prev("li")
      .addClass("ui-menu-item-last");
    $(".ui-autocomplete li:last").addClass("ui-menu-item-last");
  },
});
var xhr = false;
$(function () {
  $("input.catcomplete").catcomplete({
    minLength: 4,
    select: function (event, ui) {
      if (ui.item.link) {
        location.href = ui.item.link;
      }
    },
    open: function (obj) {
      $(".ui-autocomplete:visible").css({ top: "-=2" });
      $(this).removeClass("ui-autocomplete-loading");
      $("a.menuitem_product_more").die("click");
      $("a.menuitem_product_more").live("click", function () {
        $(this).parents("form").submit();
      });
    },
    source: function (request, response) {
      var param = {
        xmlType: "typeahead",
        getProductXML: "true",
        json: "true",
        text: request.term,
        limit: 6,
      };
      var source = "";
      if (xhr && xhr.readystate != 4) {
        xhr.abort();
      }
      xhr = $.ajax({
        type: "GET",
        url: "search.php",
        data: param,
        datatype: "json",
        success: function (result) {
          result = jQuery.parseJSON(result);
          var source = [];
          if (!$.isEmptyObject(result.products)) {
            var products = $.map(result.products, function (item) {
              var price = "";
              if (txt_quick_search["price_netto"])
                price = item.price.price_net_formatted;
              else price = item.price.price_formatted;
              return {
                label: item.name,
                id: "menuitem_product",
                icon: item.icon_small,
                link: item.link,
                price: parseFloat(item.price.value) ? price : "",
                category: txt_quick_search["produkty"],
                beforeName: txt_quick_search["produkty_before"],
              };
            });
            source = products;
            source.push({
              label: txt_quick_search["more"],
              id: "menuitem_product_more",
              icon: "",
              link: "#more",
              price: "",
              category: "",
              beforeName: "",
            });
          }
          if (!$.isEmptyObject(result.producers)) {
            var producers = $.map(result.producers, function (item) {
              return {
                label: item.name,
                id: "menuitem_category",
                icon: "",
                link: item.link,
                price: "",
                category: txt_quick_search["kategorie"],
                beforeName: txt_quick_search["producenci_before"],
              };
            });
            for (i in producers) {
              source.push(producers[i]);
            }
          }
          if (!$.isEmptyObject(result.series)) {
            var series = $.map(result.series, function (item) {
              return {
                label: item.name,
                id: "menuitem_category",
                icon: "",
                link: item.link,
                price: "",
                category: txt_quick_search["kategorie"],
                beforeName: txt_quick_search["serie_before"],
              };
            });
            for (var i in series) {
              if (series.hasOwnProperty(i)) {
                source.push(series[i]);
              }
            }
          }
          if (!$.isEmptyObject(result.menuNodes)) {
            var menuNodes = $.map(result.menuNodes, function (item) {
              var _label = item.bc
                ? $.map(item.bc.item, function (item) {
                    return item.title;
                  }).join(txt_quick_search["sep"])
                : item.name;
              return {
                label: _label,
                id: "menuitem_category",
                icon: "",
                link: item.link,
                price: "",
                category: txt_quick_search["kategorie"],
                beforeName: txt_quick_search["kategorie_before"],
              };
            });
            for (i in menuNodes) {
              source.push(menuNodes[i]);
            }
          }
          if (!$.isEmptyObject(result.categories)) {
            var categories = $.map(result.categories, function (item) {
              var _label = item.bc
                ? $.map(item.bc.item, function (item) {
                    return item.title;
                  }).join(txt_quick_search["sep"])
                : item.name;
              return {
                label: _label,
                id: "menuitem_category",
                icon: "",
                link: item.link,
                price: "",
                category: txt_quick_search["kategorie"],
                beforeName: txt_quick_search["kategorie_before"],
              };
            });
            for (i in categories) {
              source.push(categories[i]);
            }
          }
          if (!$.isEmptyObject(result.cms)) {
            var cms = $.map(result.cms, function (item) {
              return {
                label: item.name,
                id: "menuitem_category",
                icon: "",
                link: item.link,
                price: "",
                category: txt_quick_search["cms"],
                beforeName: txt_quick_search["cms_before"],
              };
            });
            for (i in cms) {
              source.push(cms[i]);
            }
          }
          response(source);
        },
      });
    },
  });
  $(".ui-autocomplete li.ui-menu-item a").live("click", function () {
    window.location = $(this).attr("href");
  });
});
app_shop.run(
  function () {
    $("#menu_settings").on(
      "click",
      ".open_trigger, #menu_settings li:first-child .form-group:first-child > label",
      function () {
        $("#menu_settings form").toggleClass("active");
        return false;
      }
    );
  },
  "all",
  "#menu_settings"
);
app_shop.txt.txt_75696_3 = " + ";
app_shop.txt.txt_75696_4 = " PKT";
app_shop.run(function () {
  function menu_basket_cache() {
    $.ajax({
      type: "GET",
      url: "/ajax/basket.php?&getAjax=true",
      dataType: "JSON",
      success: function (json) {
        json = json.basket;
        json.products.length != 0
          ? $(".menu_basket_list").removeClass("empty")
          : $(".menu_basket_list").addClass("empty");
        json.products.length != 0
          ? $("#menu_basket_wrapper").removeClass("empty_bsket")
          : $("#menu_basket_wrapper").addClass("empty_bsket");
        $("div.menu_basket strong small").remove();
        if (json.profit_points) {
          $("div.menu_basket strong").append(
            "<small>" +
              app_shop.txt.txt_75696_3 +
              json.profit_points +
              app_shop.txt.txt_75696_4 +
              "</small>"
          );
          $("div.menu_basket > a").addClass("points");
        } else {
          $("div.menu_basket > a").removeClass("points");
        }
        // ! CUSTOM
        // $("div.menu_basket > a .badge").remove();
        $(".img-counter-header .counter").remove();
        if (json.productsCounter) {
          $(".img-counter-header").append(
            '<span class="counter">' + json.productsCounter + "</span>"
          );
        } else {
          $(".img-counter-header").append('<span class="counter">0</span>');
        }

        // json.productsCounter
        //   ? $(".img-counter-header").append(
        //       '<span class="counter">' + json.productsCounter + "</span>"
        //     )
        //   : "";
        // // json.productsCounter
        //   ? ($(".img-counter-header .counter").innerHTML = json.productsCounter)
        //   : 0;
        $("div.menu_basket strong b").text(json.worth_net_formatted);
        $("#menu_basket_extrainfo .menu_basket_prices_netto").text(
          json.worth_net_formatted
        );
        $("#menu_basket_extrainfo .menu_basket_prices_brutto").text(
          json.worth_formatted
        );
        $("#menu_basket_extrainfo .menu_basket_prices_shippingCost").text(
          json.shippingCost
        );
        $("#menu_basket_extrainfo .menu_basket_prices_shippingFree").text(
          json.toShippingFree_formatted
        );
        if (json.products.length != 0) {
          let html = "";
          const products = [...json.products];
          for (i in json.products) {
            html += `<tr>
            <td class="icon-basket-body">
            <img src=${products[i].icon} />
            </td>
            <td class="menu_basket_product_name"><a class="menu_basket_product_name"href="${products[i].link}"title="${products[i].name}">${products[i].name}</a></td>            
            <td class="menu_basket_product_quantity">${products[i].count}<span class="menu_basket_product_unit">&nbsp;${products[i].worth_unit}</span></td><td class="menu_basket_product_price">${products[i].prices.worth_net_formatted}</td>
            <td class="remove-from-basket-body">
            <a href="/basketchange.php?product=${products[i].id}&amp;change=empty&amp;size=${products[i].size}&amp;mode=1&amp;additional=${products[i].md5_additional}">x</a>
            </td></tr>`;
          }
          // <td class="menu_basket_product_size">${
          //   products[i].size === "uniw" ? "---" : products[i].size_name
          // }</td>
          $(".menu_basket_product_table tbody").html(html);
        }
        window.screen.width > 979 ? $("div.menu_basket strong").show() : "";
      },
    });
    iaiGet.wishlist(function (json) {
      if (!json.Wishlist.response.attributes) return false;
      let element = $("#menu_settings .wishlist_link span");
      let count = json.Wishlist.response.attributes.count;
      // element.text(count);
    });
  }
  if (app_shop.vars.cache_html) {
    menu_basket_cache();
  }
}, "all");
var submenuWidth = "200";
app_shop.fn.mobileGen = function (reverse = false) {
  if (reverse) {
    $(".nav-header").remove();
  } else if (!$(".nav-header").length) {
    var menuList = $("aside .nav-link + ul");
    $.each(menuList, function (index, val) {
      var navHeader = $(val).prev();
      $(val).prepend('<li class="nav-header"></li>');
      $(val).find(".nav-header").prepend(navHeader.clone());
    });
  }
};
app_shop.run(
  function () {
    var window_w = $(window).width();
    $(".navbar-nav .isOverflow").removeClass("isOverflow");
    $(".navbar-nav > .nav-item").each(function () {
      var place = 0;
      $this = $(this);
      place = window_w - $this.offset().left;
      if (place < parseInt(submenuWidth)) {
        $this.addClass("isOverflow");
      }
      if (place < parseInt(submenuWidth * 2)) {
        $this.find(".navbar-subnav").addClass("isOverflow");
      }
    });
    $(".nav-link img.rwd-src").each(function () {
      $this = $(this);
      $this.attr("src", app_shop.fn.getRwdSrc($this));
    });
    if (app_shop.vars.view < 2) {
      if (window.matchMedia("(display-mode: standalone)").matches) {
        $(".nav-link").each(function (event) {
          if ($(this).next().is("ul")) {
            $(this).attr("data-href", $(this).attr("href"));
            $(this).attr("href", "##");
            $(this).addClass("not_selectable");
          }
        });
      }
    } else {
      $(".nav-link").each(function (event) {
        if ($(this).attr("data-href") != "") {
          $(this).attr("href", $(this).attr("data-href"));
          $(this).removeAttr("data-href");
        }
        $(this).removeClass("not_selectable");
      });
    }
  },
  [1, 2, 3, 4],
  "#menu_categories"
);
app_shop.run(
  function () {
    app_shop.fn.mobileGen(true);
  },
  [3, 4],
  "#menu_categories"
);
$(document).on("click", ".navbar-toggler", function (e) {
  e.preventDefault();
  if (
    $("html").hasClass("filters_open") ||
    $("html").hasClass("sidebar_open")
  ) {
    $("html").removeClass("filters_open").removeClass("sidebar_open");
    $('header .handler[data-item="menu_search"]').before($("#menu_search"));
    $('header .handler[data-item="menu_search"]').remove();
  } else {
    $("html").addClass("sidebar_open");
    $("#menu_search").before(
      '<del class="handler" data-item="menu_search" style="display:none"></del>'
    );
    $('aside .setMobileGrid[data-item="#menu_navbar"]').after(
      $("#menu_search")
    );
  }
  $(
    "aside .navbar-subnav, aside .navbar-subsubnav, aside, #menu_settings form"
  ).scrollTop(0);
  app_shop.fn.mobileGen();
  return false;
});
$("aside .navbar-collapse .nav-link").live("click", function () {
  var _next = $(this).next(),
    _parent = $(this).parent(),
    _children = _next.children();
  if (_next.is("ul") && app_shop.vars.view < 3) {
    _parent.toggleClass("nav-open");
    if (_children.length === 2) _children.last().toggleClass("nav-open");
    return false;
  }
});
$(document).on("click", "aside .nav-header .nav-link", function () {
  var _parent = $(this).parents(".nav-open").eq(0),
    _ul = _parent.parents("ul").eq(0),
    _children = _ul.children();
  _parent.removeClass("nav-open");
  if (_children.length === 2)
    _ul.parents(".nav-open").eq(0).removeClass("nav-open");
  return false;
});
$(".touch header .navbar-collapse .nav-link").live("click", function () {
  var _next = $(this).next();
  var _visible = _next.is(".active");
  $(".nav-item ul").removeClass("active");
  if (
    $("#menu_navbar").parent(".wide").size() &&
    _next.parents("ul").size() > 1
  ) {
    return true;
  }
  if (_next.is("ul")) {
    if (_visible) {
      _next.removeClass("active");
      _next.find("ul.active").removeClass("active");
      _next.parents("ul").not(".navbar-nav").addClass("active");
    } else {
      _next.addClass("active");
      _next.parents("ul").not(".navbar-nav").addClass("active");
      $("body").die("click.navbar");
      $("body").live("click.navbar", function (event) {
        $(".nav-item ul").removeClass("active");
      });
    }
    return false;
    event.preventDefault();
  }
});
$(
  ".sidebar_open header, .sidebar_open #content, .sidebar_open footer, .filters_open header, .filters_open #content, .filters_open footer"
).live("click", function (event) {
  $("html").removeClass("sidebar_open filters_open");
  $(".nav-open").removeClass("nav-open");
  $("#menu_settings form").removeClass("active");
  $('header .handler[data-item="menu_search"]').before($("#menu_search"));
  $('header .handler[data-item="menu_search"]').remove();
  event.preventDefault();
  return false;
});
app_shop.run(
  function () {
    $("header").append($(".breadcrumbs"));
  },
  [3, 4],
  ".breadcrumbs"
);
app_shop.run(
  function () {
    $("#layout").prepend($(".breadcrumbs"));
  },
  [1, 2],
  ".breadcrumbs"
);
app_shop.run(
  function () {
    $(".breadcrumbs").on("click", "#back_button", function () {
      window.history.back();
      return false;
    });
  },
  "all",
  ".breadcrumbs"
);
app_shop.vars.ceoSize = 0;
app_shop.run(
  function () {
    if ($("#main_banner1.skeleton").length) {
      var slider_init_interval = setInterval(function () {
        $("#main_banner1 li:first-child img.loaded")
          .on("load", function () {
            if ($("#main_banner1.skeleton").length) {
              $("#main_banner1.skeleton").removeClass("skeleton");
              app_shop.fn.main_slider({
                autoplay: true,
                adaptiveHeight: false,
                prevArrow:
                  '<a class="slick-prev" href=""><i class="icon-angle-left"></i></a>',
                nextArrow:
                  '<a class="slick-next" href=""><i class="icon-angle-right"></i></a>',
                autoplaySpeed: 5000,
              });
            }
            clearInterval(slider_init_interval);
          })
          .each(function () {
            if (this.complete) {
              $(this).load();
            }
          });
      }, 100);
    } else {
      app_shop.fn.main_slider({
        autoplay: true,
        adaptiveHeight: false,
        prevArrow:
          '<a class="slick-prev" href=""><i class="icon-angle-left"></i></a>',
        nextArrow:
          '<a class="slick-next" href=""><i class="icon-angle-right"></i></a>',
        autoplaySpeed: 5000,
      });
    }
  },
  "all",
  "#main_banner1"
);
app_shop.run(
  function () {
    $("#main_banner1 img.rwd-src").each(function () {
      $this = $(this);
      $this.attr("src", app_shop.fn.getRwdSrc($this));
      $this.addClass("loaded");
    });
  },
  [1, 2, 3, 4],
  "#main_banner1"
);
app_shop.fn.main_slider = function (config, pager_callback) {
  this.defaults = {
    autoplay: true,
    adaptiveHeight: true,
    prevArrow:
      '<a class="slick-prev" href=""><i class="icon-angle-left"></i></a>',
    nextArrow:
      '<a class="slick-next" href=""><i class="icon-angle-right"></i></a>',
    autoplaySpeed: 5000,
  };
  this.options = config || this.defaults;
  this.slider;
  this.pager = function () {};
  this.init = function () {
    this.slider = $("#main_banner1 .main_slider").slick(this.options);
  };
  this.paralax = function () {
    if (
      app_shop.vars.ceoSize < $("#main_banner1").height() &&
      app_shop.vars.view == 3
    ) {
      $(document).unbind("scroll.main_banner1");
      $("#main_banner1 img").css("visibility", "visible");
      $("#main_banner1 li, #main_banner1 .main_banner_wrapper div").css({
        "max-height": app_shop.vars.ceoSize,
        overflow: "hidden",
      });
      $("#main_banner1 li").each(function () {
        var $this = $(this);
        var img = $this.find("img");
        $this.css({
          "background-image": "url(" + img.attr("src") + ")",
          "background-position": "center 0%",
          "background-repeat": "no-repeat",
          "background-size": "100%",
        });
        img.css("visibility", "hidden");
      });
      var maxTop =
        $("#main_banner1").offset().top + app_shop.vars.ceoSize - 100;
      $(document).bind("scroll.main_banner1", function (event) {
        var scrollTop = $(window).scrollTop();
        var procent = (scrollTop / maxTop) * 100;
        if (procent > 100) procent = 100;
        $("#main_banner1 li").css({
          "background-position": "center " + procent + "%",
        });
      });
      $(document).trigger("scroll.main_banner1");
    }
  };
  if ($("#main_banner1 .main_slider").length) {
    this.init();
    if (pager_callback) this.pager = pager_callback;
    this.pager();
    if (app_shop.vars.ceoSize) this.paralax();
  }
};
// app_shop.run(
//   function () {
//     var Slick = $("#main_hotspot_zone1 .slickslider")
//       .on("init", function () {
//         $("#main_hotspot_zone1 .product__name").trunk8({ lines: 2 });
//         $("#main_hotspot_zone1 .product__cleardescription").trunk8({
//           lines: 3,
//         });
//       })
//       .slick({ arrows: false });
//     var current = Slick.slick("slickCurrentSlide");
//     $("#slick-pager a[data-slick-index=" + current + "]").addClass("active");
//     Slick.on("beforeChange", function (event, slick, slide, next) {
//       $("#slick-pager .active").removeClass("active");
//       $("#slick-pager a[data-slick-index=" + next + "]").addClass("active");
//     });
//     Slick.on("afterChange", function () {
//       if ($("#main_hotspot_zone1 .slick-active img:not(.b-loaded)").length) {
//         app_shop.vars.bLazy.revalidate();
//       }
//     });
//     Slick.on("setPosition", function () {
//       Slick.find(".product__name").trunk8({ lines: 2 });
//       Slick.find(".product__cleardescription").trunk8({ lines: 3 });
//     });
//     $("#slick-pager a").off();
//     $("#slick-pager a").on("click", function () {
//       Slick.slick("slickGoTo", $(this).data("slick-index"));
//       return false;
//     });
//   },
//   "all",
//   "#main_hotspot_zone1"
// );
app_shop.run(
  function () {
    $("#main_tree5 .title").click(function () {
      if (app_shop.vars.view == 1 && $(this).next("ul").size()) {
        $(this).next("ul").slideToggle();
        return false;
      }
    });
  },
  "all",
  "#main_tree5"
);
app_shop.fn.rwdBanner("#menu_buttons2", [1, 2, 3, 4]);
$(function () {
  $(".article_wrapper .datasquare").each(function () {
    var obj = $(this);
    var txt = app_shop.fn.news_data({
      data: obj.text(),
      month_names: iaical_shortNames,
      format: "<div>%d</div><span>%m</span>",
    });
    if (txt) obj.html(txt);
  });
});
app_shop.fn.rwdBanner("#menu_banners3", [1, 2, 3, 4]);
app_shop.run(
  function searchCategoryDescription() {
    if (app_shop.vars.view >= 2) {
      app_shop.fn.categoryDivider("#Navigation .navigation_desc");
      $(document).on("click", "a.show_description", function () {
        $(this).parent().addClass("expanded");
        return false;
      });
    }
  },
  "all",
  "#Navigation"
);
app_shop.run(
  function moveAfterSearchList() {
    if (app_shop.vars.view == 1) {
      $("#content").append($("#Navigation .navigation_desc"));
    }
  },
  "all",
  "#Navigation"
);
app_shop.run(
  function changeNewsDate() {
    $(".news__date").each(function eachNewsDate() {
      const obj = $(this);
      const txt = app_shop.fn.news_data({
        data: obj.text(),
        month_names: iaical_shortNames,
        format: "<div>%d %m</div><span>%y</span>",
      });
      if (txt) obj.html(txt);
    });
  },
  "all",
  ".news__date"
);
var newsletter = {
  txt: "",
  fill: function (obj) {
    if (obj.val() == "") {
      obj.val(newsletter.txt);
    }
  },
  clear: function (obj) {
    if (obj.val() != "" && obj.val() == newsletter.txt) {
      obj.val("");
    }
  },
  mode: function (tryb) {
    $("#mailing_action_contact").val(tryb);
    if (tryb == "remove") {
      $(
        'input[name="newsletter_consent"], input[name="mailing_name"]'
      ).removeClass("validate");
      $("#newsletter_privacy_consent")
        .find(".has-feedback")
        .removeClass("has-error");
      $('input[name="mailing_name"]').parent().removeClass("has-error");
      $('input[name="mailing_name"]').siblings(".validate_message").html("");
    } else if (tryb == "add") {
      $(
        'input[name="newsletter_consent"], input[name="mailing_name"]'
      ).addClass("validate");
    }
  },
};
app_shop.run(
  function () {
    $("form.newsletter_form")
      .find("input, textarea")
      .on("input", function () {
        clearTimeout(app_shop.formControl.timeHandle);
        obj = $(this);
        app_shop.formControl.timeHandle = setTimeout(function () {
          app_shop.formControl.validate(obj);
        }, 500);
      });
    $("#newsletter_button_remove").on("click", function () {
      newsletter.mode("remove");
      return app_shop.formControl.checkForm($(this).parents("form"));
    });
    $("#newsletter_button_add").on("click", function () {
      newsletter.mode("add");
      return app_shop.formControl.checkForm($(this).parents("form"));
    });
  },
  "all",
  "form.newsletter_form"
);
function opinionsTruncate() {
  app_shop.fn.textTruncate = new TextTruncate(
    { lineH: 18, lineC: 2, wrapper: $("#opinions_wrapper"), count: 95 },
    (wrapper, el) => {
      el.parents(".opinion_item").on("mouseleave", () => {
        app_shop.fn.magicGrid.positionItems();
        el.parents(".opinion_item").off();
      });
      if ($("html").hasClass("touch")) {
        app_shop.fn.magicGrid.positionItems();
      }
    }
  );
}
function opinionsImgLoad() {
  app_shop.vars.bLazy.o.success = function (element) {
    $(element).parents(".loading").removeClass("loading");
    app_shop.fn.magicGrid.positionItems();
  };
}
app_shop.vars.magicGridOptions = {
  container: ".opinions_wrapper",
  static: true,
  animate: true,
  gutter: 30,
  maxColumns: 3,
  useMin: true,
};
app_shop.fn.opinionsLoad = function () {
  app_shop.fn.magicGrid = new MagicGrid(app_shop.vars.magicGridOptions);
  app_shop.fn.magicGrid.listen();
  app_shop.fn.magicGrid.positionItems();
  opinionsTruncate();
  $(".new_load_items img.b-lazy").parents("a").addClass("loading");
  app_shop.vars.bLazy = new Blazy({
    container: "#opinions_wrapper",
    success: function (element) {
      setTimeout(function () {
        $(element).parents(".loading").removeClass("loading");
        app_shop.fn.magicGrid.positionItems();
      }, 200);
    },
  });
};
app_shop.run(
  () => {
    opinionsTruncate();
    opinionsImgLoad();
  },
  "all",
  "#opinions_wrapper"
);
app_shop.txt.more = "więcej";
app_shop.run(
  function OpinionsShopApp() {
    const opinionsShopObj = new OpinionsShop({});
  },
  "all",
  "#opinions_shop"
);
app_shop.run(
  function orderOpenValidate() {
    $("#order_open__number_input, #order_open__email_input").on(
      "input",
      function orderOpenValidateInput() {
        clearTimeout(app_shop.formControl.timeHandle);
        const obj = $(this);
        app_shop.formControl.timeHandle = setTimeout(
          function orderOpenValidateInputimeout() {
            app_shop.formControl.validate(obj);
          },
          500
        );
      }
    );
    $(".order_open__button").on("click", function orderOpenValidateButton() {
      return app_shop.formControl.checkForm(
        $(this).parents(".order_open__form")
      );
    });
  },
  "all",
  ".order_open"
);
const orderTxt = {};
orderTxt.gratis = "Gratis!";
orderTxt.pkt = " pkt.";
orderTxt.gross = " brutto";
orderTxt.day = " dzień ";
orderTxt.days = " dni ";
orderTxt.hour = " godz. ";
orderTxt.hours = " godz. ";
orderTxt.minutes = " min";
orderTxt.time_pick1 = "Przesyłka będzie u Ciebie w ciągu ";
orderTxt.time_pick2 = "Przesyłka będzie dostarczona w dniu ";
orderTxt.time_pick3 = "Odbierz zamówienie za ";
orderTxt.time_pick4 = "Odbiór zamówienia możliwy ";
orderTxt.time_pick5 = "Przesyłka powinna być u Ciebie ";
orderTxt.time_pick5de = "";
orderTxt.time_pick6 =
  "Zamówienie będzie gotowe do odbioru natychmiast po przyjęciu zamówienia";
orderTxt.shipping0 = "dzisiaj";
orderTxt.shipping1 = "w poniedziałek";
orderTxt.shipping2 = "we wtorek";
orderTxt.shipping3 = "w środę";
orderTxt.shipping4 = "w czwartek";
orderTxt.shipping5 = "w piątek";
orderTxt.shipping6 = "w sobotę";
orderTxt.shipping7 = "w niedzielę";
const orderTxtShipping = [
  orderTxt.shipping0,
  orderTxt.shipping1,
  orderTxt.shipping2,
  orderTxt.shipping3,
  orderTxt.shipping4,
  orderTxt.shipping5,
  orderTxt.shipping6,
  orderTxt.shipping7,
];
orderTxt.xpress1 = "Musisz podać szczegóły dotyczące sposobu dostawy";
orderTxt.xpress2 = "Kurier ekspresowy nie obsługuje Twojej okolicy ";
orderTxt.xpress3 =
  "Wystąpił błąd zewnętrznego serwisu firmy kurierskiej. Proszę skontaktować się z obsługą sklepu lub zmienić formę dostawy. ";
orderTxt.week1 = " tydzień";
orderTxt.week2 = " tygodnie";
orderTxt.week3 = " tygodni";
orderTxtWeek = [orderTxt.week3, orderTxt.week1, orderTxt.week2];
var activeObject;
function passAction() {
  if (activeObject.is("a")) {
    window.location = activeObject.attr("href");
  } else {
    activeObject.closest("form").submit();
  }
}
function setUnload() {
  $(window).bind("beforeunload", function (e) {
    e = e || window.event;
    e.returnValue = confirmmessage;
    return confirmmessage;
  });
}
function order2_input_valid() {
  $(".order2_terms_wrapper input").each(function () {
    if (!$(this).is(":checked")) {
      $(this).parent().parent().addClass("required");
    }
  });
  if ($(".order2_terms_wrapper input").not(":checked").length > 0) {
    $("input.order2_button_order, input.order2_button_next").addClass(
      "terms_required"
    );
  } else {
    $("input.order2_button_order, input.order2_button_next").removeClass(
      "terms_required"
    );
  }
}
function order2_terms_valid() {
  if ($("input.order2_button_order").is(".terms_required")) {
    order2_input_valid();
  } else {
    $(window).unbind("beforeunload");
    $("#ajaxLoadSite,#ajaxLoadSite_cover").show();
    $("form.order2_form").submit();
  }
}
app_shop.run(
  function () {
    $("#container.order2_page .align_row").iai_align();
    orderdetails_payments.ajaxLoadSite(1);
    orderdetails_payments.ajaxLoadSiteMessage(order_send_preloadertxt);
    $("#ajaxLoadSite,#ajaxLoadSite_cover").hide();
    $("div.order2_fileslist span").each(function () {
      var limit = 23;
      var link = $(this).text();
      if (link.length >= limit)
        if (link.indexOf(".") > 0) {
          var arr = link.split(".");
          $(this).text(
            arr[arr.length - 2].substring(0, limit) + " [...]." + arr.pop()
          );
        } else {
          $(this).text(link.substring(0, limit));
        }
    });
    if ($("form.order2_form").length) {
      setUnload();
      $("input[type='submit'], a, button[type='submit']")
        .not(
          'form.order2_form a, form.order2_form input, form.order2_form button, form[action="settings.php"] button, #dialog_close'
        )
        .click(function () {
          activeObject = $(this);
          $("#ui-dialog").remove();
          dialogHTML = "";
          dialogHTML +=
            '<div id="menu_notice"><strong>' +
            confirmmessage2 +
            "</strong></div>";
          $('<div id="ui-dialog">' + dialogHTML + "</div>").appendTo("body");
          $("<h2>" + confirmwarning + "</h2>").prependTo("#menu_notice");
          $("#ui-dialog").dialog({
            wrappContent: true,
            fixed: false,
            fitToWindow: false,
            beforeShow: function () {
              $(
                '<div id="ui-dialog_button"><button onclick="$(window).unbind(\'beforeunload\'); passAction();" class="btn --solid">' +
                  stop_order_button +
                  '</button><button onclick="setUnload(); $(\'#dialog_close\').click();" class="btn --solid">' +
                  continue_order_button +
                  "</button></div>"
              ).appendTo("#dialog_wrapper");
            },
          });
          $("#dialog_wrapper_sub.setMaxHeightWindow").css(
            "max-height",
            $("#dialog_wrapper_sub").height() -
              ($("#ui-dialog_button").outerHeight() +
                $("#dialog_wrapper h2:first").outerHeight())
          );
          return false;
        });
      $("input.order2_button_order, input.order2_button_next").click(
        function () {
          order2_terms_valid();
          return false;
        }
      );
      $(
        "a.n57856_orderlink, a.n57856_nextlink, a.order2_button_change, a.order2_button_change_stock, a.order2_button_change_address, a.order2_button_change2,  a.order2_change_delivery_link"
      ).click(function () {
        $(window).unbind("beforeunload");
        if ($(this).is("input.order2_button_order, a.n57856_orderlink")) {
          $("#ajaxLoadSite,#ajaxLoadSite_cover").show();
        }
        return true;
      });
    }
    $("input.order2_button_order").on("mouseover", function () {
      order2_input_valid();
    });
    $(".order2_terms_wrapper input").click(function () {
      $(this).parent().parent().removeClass("required");
    });
    if (typeof only_virtual != "undefined" && only_virtual == "yes")
      $("div.wrappers_price").hide();
  },
  "all",
  "form.order2_form",
  true
);
var confirmmessage =
  "Twoje zamówienie nie zostało jeszcze złożone. Opuszczenie tej strony oznacza porzucenie zamówienia. Pamiętaj, że wracając do zamówienia za jakiś czas niektóre z produktów lub cen mogą być już nieaktualne.";
var confirmmessage2 =
  "Twoje zamówienie nie zostało jeszcze złożone. Dopiero przejście do kolejnego etapu zamówienia oznacza wysłanie go do realizacji. Pamiętaj, że wracając do zamówienia za jakiś czas niektóre z produktów lub cen mogą być już nieaktualne.";
var confirmwarning = "Ostrzeżenie";
var order_send_preloadertxt = "Trwa składanie zamówienia";
var stop_order_button = "Przerwij składanie zamówienia ";
var continue_order_button = "Kontynuuj składanie zamówienia ";
const order2Txt = {};
order2Txt.week1 = " tydzień";
order2Txt.week2 = " tygodnie";
order2Txt.week3 = " tygodni";
order2TxtWeek = [orderTxt.week3, orderTxt.week1, orderTxt.week2];
var eInvoice_dialog = function () {
  if (!$("#e-invoice_dialog").length) return false;
  $("#e-invoice_dialog").dialog({
    wrappContent: true,
    width: "700px",
    fixed: false,
  });
};
app_shop.run(
  function () {
    if ($('input[name="invoice"]:checked').val() == 1) eInvoice_dialog();
    $('input[name="invoice"]').live("change", function () {
      if ($(this).val() == 1) eInvoice_dialog();
    });
    $("#e-invoice_dialog button").live("click", function () {
      $("input#order2_document_e_invoice").attr("checked", true);
      $("#dialog_close").click();
    });
  },
  "all",
  "#e-invoice_dialog"
);
app_shop.run(
  function () {
    $("a#toggle_comments_button").on("click", function () {
      var $this = $(this);
      $this.parent().toggleClass("open");
      return false;
    });
  },
  "all",
  "#toggle_comments_button"
);
app_shop.run(
  function divisionChangeLiteral() {
    const weeks = $(".shipping_time_division").data("shipping_week");
    $(".shipping_time_division strong").html(
      weeks +
        app_shop.fn.changeLiteral(parseInt(weeks, 10), order2TxtWeek, true)
    );
  },
  "all",
  ".shipping_time_division"
);
app_shop.run(
  function previewOrder2File() {
    $(".order2__file").on("click", function previewOrder2FileClick(e) {
      e.preventDefault();
      const $this = $(this);
      const fileLink = $this.attr("rel");
      const fileName = $this.find("span").text();
      const fotoHTML = `<div id="ui-dialogimg"><img alt="${fileName}"src="${fileLink}"/></div>`;
      $(fotoHTML).dialog({
        wrappContent: true,
        fixed: false,
        fitToWindow: false,
        afterCloseFn: function deleteDialogImg() {
          $("#ui-dialogimg").remove();
        },
      });
      return false;
    });
  },
  "all",
  ".order2__file"
);
var pickupl_animspeed = 500;
var pickupl_alert = "Nie wybrano punktu odbioru";
var pickupl_alertPoczta = "Nie wybrano urzędu pocztowego";
var pickupl_linktxt = "więcej informacji";
var pickupl_linktitle = "Zobacz szczegółowe informacje";
var pickupl_requires_client_number =
  "Nie wprowadzono numeru klienta w systemie kuriera.";
var pickupl_select_adress = "Wpisz poprawny adres.";
var pickupl_select_route = "Wpisz nazwę miasta";
var pickupl_nopoints = "Wpisz inny adres, brak punktów odbioru.";
var pickupl_error =
  "Wystąpił błąd. Proszę odświeżyć stronę i spróbować ponownie";
var pickupl_nopoints_in_area =
  "Nie znaleziono punktów odbioru na danym obszarze. ";
var stocks_list_more_txt = "";
var stocks_list_on_map_txt = "";
if (typeof selected_pickup_point == "undefined") {
  var selected_pickup_point = {};
}
var dialog_button_class = "btn --solid";
function init_orderdetails_info() {
  $("a.show_status_explanation, a.orderdetails_info__status").live(
    "click",
    function () {
      $("body").dialog({
        content:
          '<div style="text-align:left" class="explanation_popup">' +
          $(this).next().html() +
          "</div>",
        fixed: false,
        fitToWindow: false,
      });
      $("<h2>" + $(this).text() + "</h2>").prependTo("#dialog_wrapper");
      if (dialog_button_class === "")
        $(
          '<div id="ui-dialog_button"><button class="btn-small" onclick="$(\'#dialog_close\').click();">' +
            txt_62619_close_window +
            "</button></div>"
        ).appendTo("#dialog_wrapper");
      else
        $(
          '<div id="ui-dialog_button"><button class="' +
            dialog_button_class +
            '" onclick="$(\'#dialog_close\').click();">' +
            txt_62619_close_window +
            "</button></div>"
        ).appendTo("#dialog_wrapper");
      return false;
    }
  );
}
var txt_62619_label = "Wpłaty ";
var txt_62619_wybrales_curr = "Wybrałeś";
var txt_62619_wybrales = "Wybrałeś, ale zrezygnowałeś z płatności";
var txt_62619_nakwote = " na kwotę ";
var txt_62619_wybrales2_curr = "";
var txt_62619_wybrales2 = "Wybrano";
var txt_62619_jako = " jako formę płatności.";
var txt_62619_jako_zwrot = " jako formę zwrotu.";
var txt_62619_kwota = "Kwota do wpłaty to ";
var txt_62619_kwota_zwrot = " Kwota do zwrotu to ";
var txt_62619_auto = "<br/>Wpłata zostanie zaksięgowana <b>automatycznie</b>.";
var txt_62619_dokoncz = "";
var txt_62619_title =
  "Jeżeli proces opłacania został przerwany, ponów tą płatność.";
var txt_62619_ponow = "Ponów wpłatę";
var txt_62619_bedz = "";
var txt_62619_bedz2 = "<br />Możesz zmienić sposób zapłaty.";
var txt_62619_w_inny =
  "<br/>Dokonaj wpłaty na poniższe dane lub wybierz inny sposób zapłaty. ";
var txt_62619_w_inny2 = "Zmień formę płatności";
var txt_62619_rezygnacja = "Zrezygnowałeś z tej formy płatności.";
var txt_62619_przyj_wplata = "Twoja wpłata została przyjęta.";
var txt_62619_przyj_zwrot = "Zwrot został wykonany.";
var txt_62619_paymentError =
  'Wystąpił błąd płatności. Spróbuj ponownie opłacić zamówienie za chwilę lub  <a href="contact.php">skontaktuj się z nami</a>.';
var txt_62619_od_nazwa = "Nazwa odbiorcy: ";
var txt_62619_konto = "Numer konta: ";
var txt_62619_swit = "SWIFT: ";
var txt_62619_bank = "Bank:  ";
var txt_62619_tytulem = "Tytuł przelewu: ";
var txt_62619_do_zaplaty = "Kwota przelewu: ";
var txt_62619_wplata_dane = "<br/>Dokonaj wpłaty na poniższe dane.";
var txt_62619_close_window = "Zamknij okno";
var txt_62619_https_error =
  "Dokonać płatności kartą kredytową można tylko przy użyciu szyfrowanego połączenia. Sprawdź czy adres sklepu poprzedzony jest protokołem HTTPS lub skontaktuj się z obsługą sklepu.";
var txt_62619_voucher_error = "Wystąpiły błędy płatności bonem. ";
var txt_62619_voucher_error_v1 = "W tym sklepie, ten bon jest nieważny.";
var txt_62619_voucher_error_v2 =
  "Numer bonu jest niepoprawny. Nie istnieje bon o takim identyfikatorze. Spróbuj wpisać identyfikator ponownie, upewniając się, że jest on poprawny.";
var txt_62619_voucher_error_v3 = "Ten bon jest zablokowany.";
var txt_62619_voucher_error_v4 = "Ten bon został już wykorzystany.";
var txt_62619_voucher_error_v5 =
  "Ten bon jest już nieważny - termin ważności minął.";
var txt_62619_voucher_error_v6 = "";
var txt_62619_voucher_error_v7 =
  "Bon o podanym identyfikatorze nie istnieje. Spróbuj wpisać identyfikator ponownie.";
var txt_62619_voucher_error_v8 = "Nie podano identyfikatora bonu.";
var txt_62619_payment_title = "Dokonaj płatności";
var txt_62619_loader_message = "Pobieram dane o płatności";
var txt_62619_loader_message2 = "Dodaję płatność";
var txt_62619_loader_message3 = "Pobieram historię płatności";
var txt_62619_hhtransfer_error = "Wystąpiły błędy płatności punktami.";
var txt_62619_incorrect_paymentid =
  "Wystąpiły błędy - wybierz inną formę płatności.";
var txt_62619_newpayment_error =
  "Wystąpiły błędy płatności. Spróbuj ponownie opłacić zamówienie za chwilę.";
var txt_62619_newpayment_points_error =
  "Nie masz wystarczającej ilości punktów lojalnościowych aby opłacić to zamówienie- wybierz inną formę płatności.";
var txt_62619_mozesz_row = " Możesz również ";
var txt_62619_anuluj_wplate = " anulować tę wpłatę";
var txt_62619_paymentCancelError =
  'Wystąpił błąd podczas anulowania płatności. Spróbuj ponownie  za chwilę lub  <a href="contact.php">skontaktuj się z nami</a>.';
var txt_62619_loader_message_4 = "Trwa anulowanie płatności";
var txt_62619_wypelnij_wniosek = "Wypełnij wniosek";
var txt_62619_dokonaj_platnosci = "Dokonaj płatności";
var txt_62619_do_oplacenia = "Do opłacenia zamówienia pozostało Ci ";
var txt_62619_dodatkowa_opl = "Dodatkowa opłata ";
var txt_62619_l_nawias = " (";
var txt_62619_r_nawias = ")";
var txt_62619_payment_success =
  "Dyspozycja dokonania płatności internetowej została przyjęta.";
var txt_62619_select_payment_method = "Wybierz sposób zapłaty";
var txt_62619_select_firstData =
  "Transakcja zostanie zrealizowana przez system płatności FirstData International";
var txt_prepaid0011_kredyt = "Kredyt Kupiecki";
var txt_prepaid0011_saldo = "Saldo (nadpłata na koncie klienta)";
var txt_prepaid0019_upper = "Wybierz inną formę płatności";
var txt_blikCode = "Podaj 6-cyfrowy kod BLIK:";
var lukasnotconfirmed = "Proszę zaznaczyć pole z wyrażeniem zgody.";
var zagielnotconfirmed =
  "Przed zatwierdzeniem płatności eRaty zapoznaj się z regulaminem.";
var next_voucher_text = "<span>+</span> Użyj kolejnego bonu";
var blik_js_txt_confirm =
  "Potwierdź transakcję za pomocą aplikacji na swoim urządzeniu mobilnym.";
var blik_code_empty = "";
var txt_terms_title = "Płatność jednorazowa IAI Pay";
var txt_terms_link = "regulamin płatności jednorazowej IAI Pay";
var txt_terms_checkbox =
  "Oświadczam, że zapoznałam / zapoznałem się i w pełni akceptuję Regulamin.";
var txt_terms_checkbox1 = "Zapoznałem się i akceptuję ";
var txt_terms_checkbox2 = ", realizowanej bezpośrednio na konto sprzedawcy";
var txt_62619_restartPayment = "Ponów płatność";
var txt_62619_card_not_supported =
  "Przepraszamy, ale nie obsługujemy tego rodzaju kart";
var txt_62619_blik_length_error = "Kod BLIK powinien zawierać 6 cyfr";
var orderdetails_payments = {};
orderdetails_payments.ajaxLoadSite = function (flaga) {
  if (!flaga) {
    $("#ajaxLoadSite").remove();
    $("#ajaxLoadSite_cover").remove();
  } else {
    $("#ajaxLoadSite").remove();
    $("#ajaxLoadSite_cover").remove();
    $("body").append("<div id='ajaxLoadSite_cover'></div>");
    $("#ajaxLoadSite_cover").css({
      height: $(document).height(),
      width: $(window).width(),
      position: "absolute",
      left: "0px",
      top: "0px",
    });
    $("body").append('<div id="ajaxLoadSite">');
    $("#ajaxLoadSite").css({
      left: $(window).width() / 2 - $("#ajaxLoadSite").width() / 2,
    });
  }
};
orderdetails_payments.ajaxLoadSiteMessage = function (message) {
  $("#ajaxLoadSite").append(message);
  $("#ajaxLoadSite").css({
    left: $(window).width() / 2 - $("#ajaxLoadSite").width() / 2,
  });
};
const prepaidTxt = {};
prepaidTxt.week1 = " tydzień";
prepaidTxt.week2 = " tygodnie";
prepaidTxt.week3 = " tygodni";
prepaidTxtWeek = [prepaidTxt.week3, prepaidTxt.week1, prepaidTxt.week2];
app_shop.run(function () {
  if (typeof only_virtual != "undefined" && only_virtual == "true") {
    $("#prepaid_delivery_list").hide();
  }
}, "all");
app_shop.run(
  function () {
    $("a#toggle_documents_button").on("click", function () {
      var $this = $(this);
      $this.parent().toggleClass("open");
      return false;
    });
  },
  1,
  ".prepaid_page"
);
(function ($) {
  $.fn.hasScrollBar = function () {
    return this.width() < this.find(">*:first").width();
  };
})(jQuery);
app_shop.vars.cmpItemWidth = 200;
app_shop.fn.cmpItemWidth = function (itemCount, borderWidth) {
  $("#compareCss").remove();
  var width = $("#product_compare_list").width() / itemCount - borderWidth * 2;
  app_shop.vars.cmpItemWidth = width;
  $("head").append(
    "<style id='compareCss'>.compare .item_width{ width:" +
      width +
      "px; }</style>"
  );
  setTimeout(function () {
    if ($("#product_compare_list").hasScrollBar()) {
      $("#product_compare_list_wrapper").addClass("hasScrollBar");
    } else {
      $("#product_compare_list_wrapper").removeClass("hasScrollBar");
    }
  }, 500);
};
app_shop.run(
  function () {
    app_shop.fn.cmpItemWidth(3, 1);
  },
  1,
  "#product_compare_list"
);
app_shop.run(
  function () {
    app_shop.fn.cmpItemWidth(4, 1);
  },
  2,
  "#product_compare_list"
);
app_shop.run(
  function () {
    app_shop.fn.cmpItemWidth(4, 1);
  },
  3,
  "#product_compare_list"
);
app_shop.run(
  function () {
    app_shop.fn.cmpItemWidth(5, 1);
  },
  4,
  "#product_compare_list"
);
app_shop.run(
  function () {
    var cmp_list_w = $("#product_compare_list_wrapper");
    var cmp_list = $("#product_compare_list");
    var checkNavigation = function () {
      if (
        cmp_list.scrollLeft() + cmp_list.innerWidth() >=
        cmp_list[0].scrollWidth
      ) {
        cmp_list_w.addClass("hideNext");
      } else {
        cmp_list_w.removeClass("hideNext");
      }
      if (cmp_list.scrollLeft() == 0) {
        cmp_list_w.addClass("hidePrev");
      } else {
        cmp_list_w.removeClass("hidePrev");
      }
    };
    $('.configure a[href="#differences"]').click(function () {
      var $that = $(this);
      var toggletxt = $that.data("toggletxt").trim();
      var datatext = decodeURIComponent($that.html().trim());
      $that.html(toggletxt);
      $that.data("toggletxt", datatext);
      if ($("#product_compare_list .highlight").size()) {
        $("#product_compare_list .highlight").removeClass("highlight");
        return false;
      }
      cmp_list
        .find("tr")
        .not(".cmp_product")
        .each(function () {
          if (
            $.unique(
              $(this)
                .find("td")
                .map(function () {
                  return $(this).text().trim().toLowerCase();
                })
            ).size() > 1
          ) {
            $(this).addClass("highlight");
          }
        });
      if (
        $.unique(
          $(".list_traits li.producer div").map(function () {
            return $(this).text().trim().toLowerCase();
          })
        ).size() > 1
      ) {
        $(".list_traits li.producer").addClass("highlight");
      }
      if (
        $.unique(
          $(".list_traits li.barcode div").map(function () {
            return $(this).text().trim().toLowerCase();
          })
        ).size() > 1
      ) {
        $(".list_traits li.barcode").addClass("highlight");
      }
    });
    $(".configure_item a[data-position]").click(function () {
      var $that = $(this);
      var position = $that.data("position") - 1;
      $("#product_compare_list tr").each(function () {
        $(this).find("td").eq(position).toggleClass("hideCol");
      });
      setTimeout(function () {
        if (cmp_list.hasScrollBar()) {
          cmp_list_w.addClass("hasScrollBar");
        } else {
          cmp_list_w.removeClass("hasScrollBar");
        }
        checkNavigation();
        var toggletxt = $that.data("toggletxt").trim();
        var datatext = decodeURIComponent($that.html().trim());
        $that.html(toggletxt);
        $that.data("toggletxt", datatext);
      }, 300);
      return false;
    });
    cmp_list.bind("scroll", function () {
      checkNavigation();
    });
    cmp_list.scrollLeft(0);
    $(".navigation .prev").click(function () {
      cmp_list.animate({ scrollLeft: "-=" + app_shop.vars.cmpItemWidth }, 500);
    });
    $(".navigation .next").click(function () {
      cmp_list.animate({ scrollLeft: "+=" + app_shop.vars.cmpItemWidth }, 500);
    });
  },
  "all",
  "#product_compare_list"
);
app_shop.run(
  function () {
    $("#product_stocks_list .sizes_wrapper").wrappTableLayout({ numCol: 3 });
  },
  [3, 4],
  "#product_stocks_list"
);
app_shop.run(
  function () {
    $("#product_stocks_list .sizes_wrapper").wrappTableLayout({ numCol: 2 });
  },
  2,
  "#product_stocks_list"
);
app_shop.run(
  function () {
    $("#product_stocks_list .sizes_wrapper").wrappTableLayout({ numCol: 1 });
  },
  1,
  "#product_stocks_list"
);
$(function () {
  $(".show_tab").click(function () {
    if (app_shop.vars.view == 1) {
      $(this).toggleClass("tab_hidden").toggleClass("tab_visible");
      $($(this).attr("href")).slideToggle("fast");
    }
    return false;
  });
});
app_shop.run(
  function () {
    app_shop.fn.dropdown(
      $(".pb_paging__select"),
      "pb_setting__",
      function ($elem) {
        app_shop.fn.clickDropdown($elem, true);
      }
    );
  },
  "all",
  ".pb_search_setting select"
);
app_shop.run(
  function () {
    $(".pb_button .btn-disabled").on("click", function (e) {
      e.preventDefault();
      return false;
    });
  },
  "all",
  ".pb_button .btn-disabled",
  true
);
app_shop.run(
  function () {
    $(".pb_icon img.rwd-src").each(function () {
      $this = $(this);
      $this.attr("src", app_shop.fn.getRwdSrc($this));
    });
  },
  [1, 2, 3, 4],
  "#productpb_bought"
);
$(document).on(
  "hover.zoomContainer",
  ".zoomContainer, .photos__slider .photos__link",
  function projectorElevateHover() {
    $(".photos__slider .photos__magnify").toggleClass("--active");
  }
);
$(document).on(
  "click",
  "#photos_slider .photos__link, #photos_nav a.--more",
  function projectorPhotoSwipeClick(e) {
    e.preventDefault();
    const slickIndex = $(this).hasClass("--more")
      ? parseInt($(this).data("slick-index"), 10)
      : parseInt($(this).parent().data("slick-index"), 10);
    app_shop.vars.projectorPhotoSwipe.init(slickIndex);
    return false;
  }
);
app_shop.run(
  function photosSlider() {
    app_shop.vars.projectorElevate = new ProjectorElevate({
      selector:
        ".no-touch .photos__slider .slick-active .photos__photo[data-zoom-image]",
    });
    app_shop.vars.projectorSlider = new ProjectorSlider({
      selector:
        ".photos__slider .photos___slider_wrapper:not(.slick-initialized)",
      callbackBefore: (slider) => {
        slider
          .on("init", function callbackBeforeSliderInit() {
            app_shop.vars.projectorElevate.init();
          })
          .on("afterChange", function callbackBeforeSliderAfterChange() {
            app_shop.vars.projectorElevate.reset();
          });
      },
    });
    app_shop.vars.projectorPhotoSwipe = new ProjectorPhotoSwipe({
      selector:
        "#photos_slider .photos__figure:not(.slick-cloned) .photos__link",
      pswp: ".pswp",
    });
  },
  "all",
  "#photos_slider"
);
app_shop.txt.txt_111709_1 = "Udostępnij na Facebooku";
app_shop.txt.txt_111709_2 = "Pobierz zdjęcie";
const ProjectorPhotoSwipe = function ProjectorPhotoSwipe(params) {
  this.params = params;
  this.defaults = {
    index: 0,
    history: false,
    focus: false,
    showAnimationDuration: 0,
    hideAnimationDuration: 0,
    shareButtons: [
      {
        id: "facebook",
        label: app_shop.txt.txt_111709_1
          ? app_shop.txt.txt_111709_1
          : "Udostępnij na Facebooku",
        url: "https://www.facebook.com/sharer/sharer.php?u={{url}}",
      },
      {
        id: "download",
        label: app_shop.txt.txt_111709_2
          ? app_shop.txt.txt_111709_2
          : "Pobierz zdjęcie",
        url: "{{raw_image_url}}",
        download: true,
      },
    ],
  };
  this.init = (slickIndex) => {
    const { selector, options, pswp, itemsArray } = this.params;
    this.settings = _objectSpread({}, this.defaults, {}, options);
    this.selector = selector;
    this.pswp = document.querySelectorAll(pswp)[0];
    this.items = [];
    if (itemsArray) this.items = itemsArray;
    else this.setItemsArray();
    if (slickIndex) this.settings.index = slickIndex;
    const gallery = new PhotoSwipe(
      this.pswp,
      PhotoSwipeUI_Default,
      this.items,
      this.settings
    );
    gallery.listen(
      "gettingData",
      function photoSwipeGetWidthHeight(index, item) {
        if (item.w < 1 || item.h < 1) {
          const img = new Image();
          img.onload = function photoSwipeSetWidthHeight() {
            item.w = this.width;
            item.h = this.height;
            gallery.updateSize(true);
          };
          img.src = item.src;
        }
      }
    );
    gallery.init();
  };
  this.setItemsArray = () => {
    const galleryElements = [].slice.call(
      document.querySelectorAll(this.selector)
    );
    galleryElements.forEach((element) => {
      const item = {
        src: element.getAttribute("href"),
        w: element.getAttribute("data-width"),
        h: element.getAttribute("data-height"),
      };
      this.items.push(item);
    });
  };
};
function _formatPrice(obj) {
  return format_price(obj.price, {
    mask: app_shop.vars.currency_format,
    currency: obj.currency,
    currency_space: app_shop.vars.currency_space,
    currency_before_price: app_shop.vars.currency_before_value,
  });
}
app_shop.vars.newAlertProjector = true;
function projectorEndStartCallback() {
  $("#avability_product_size strong").text(
    projectorObj.currentSizeObj.description
  );
  cena_raty =
    projectorObj.currentSizeObj.price.value *
    projectorObj.configObj.valueOfNumberInput;
  if (client_login) {
    $(
      '<span class="show_tip css_tip css_tip_small"><i class="icon-question"></i></span>'
    )
      .attr("title", txt_toltip_2a.replace("[xxx]", client_points))
      .appendTo("#projector_price_points");
  } else {
    $(
      '<span class="show_tip css_tip css_tip_small"><i class="icon-question"></i></span>'
    )
      .attr("title", txt_toltip_2)
      .appendTo("#projector_price_points");
  }
  $(
    '<span class="show_tip css_tip css_tip_small"><i class="icon-question"></i></span>'
  )
    .attr("title", txt_toltip_3)
    .appendTo("#projector_points_recive_points");
  if (
    projectorObj.txt["size_select_functionality"] &&
    projectorObj.txt["size_select_functionality"] != "0"
  ) {
    app_shop.fn.fashionAvailability();
  }
  app_shop.fn.tommorowAvailability();
  if (
    product_data.sizes &&
    (product_data.sizes.uniw || product_data.sizes.onesize)
  ) {
    $("#projector_sizes_cont").hide();
  }
  if (
    projectorObj.currentSizeObj.price.maxprice_net &&
    projectorObj.currentSizeObj.price.maxprice_net > 0
  ) {
    $("#projector_price_maxprice").html(
      projectorObj.formatPrice(
        projectorObj.currentSizeObj.price.maxprice_net,
        true
      )
    );
  }
  if (projectorObj.currentSizeObj.phone_price == "false") {
    $("#projector_price_value").html(
      "<span>" +
        projectorObj.formatPrice(
          projectorObj.currentSizeObj.price.price_net,
          true,
          false,
          false
        ) +
        "</span>" +
        "<span class='netto-projector-price'> netto</span>"
    );
  }
  if (
    projectorObj.currentSizeObj.price.srp_net &&
    projectorObj.currentSizeObj.price.srp_net > 0 &&
    projectorObj.currentSizeObj.price.srp_net !=
      projectorObj.currentSizeObj.price.price_net
  ) {
    $("#projector_price_srp").html(
      projectorObj.formatPrice(projectorObj.currentSizeObj.price.srp_net, true)
    );
  }
  if (
    projectorObj.currentSizeObj.phone_price != "true" &&
    projectorObj.currentSizeObj.bundle_price &&
    projectorObj.currentSizeObj.bundle_price.amount_diff_gross > 0
  ) {
    $("#projector_price_yousave").html(
      '<span class="projector_price_save_text">' +
        projectorObj.txt["oszczedzasz"] +
        "</span>" +
        '<span class="projector_price_save_percent">' +
        projectorObj.currentSizeObj.bundle_price.percent_diff +
        "</span>" +
        '<span class="projector_price_save_value">' +
        projectorObj.txt["taniej"] +
        '<span class="projector_price">' +
        projectorObj.formatPrice(
          projectorObj.currentSizeObj.bundle_price.amount_diff_gross,
          true
        ) +
        "</span>" +
        projectorObj.txt["wzestawie"] +
        "</span>"
    );
  } else if (
    projectorObj.currentSizeObj.price.yousave &&
    projectorObj.currentSizeObj.price.yousave_percent
  ) {
    $("#projector_price_yousave")
      .show()
      .html(
        '<span class="projector_price_save_text">' +
          projectorObj.txt["oszczedzasz"] +
          "</span>" +
          '<span class="projector_price_save_percent">' +
          projectorObj.currentSizeObj.price.yousave_percent +
          "</span>" +
          '<span class="projector_price_save_value">' +
          projectorObj.txt["taniej"] +
          '<span class="projector_price">' +
          projectorObj.formatPrice(
            projectorObj.currentSizeObj.price.yousave_net,
            true
          ) +
          "</span>" +
          projectorObj.txt["nawias_end"] +
          "</span>"
      );
  }
  if (projectorObj.currentSizeObj.product_type === "product_bundle") {
    if (projectorObj.currentSizeObj.availability.status == "disable") {
      $("#projector_tell_availability").find("input").attr("disabled", false);
      $("body").removeClass("alertek-disabled");
      $.getJSON(
        "/ajax/projector.php?action=get_product_observed",
        {
          product: $("#projector_product_hidden").val(),
          size: $("#projector_size_hidden").val(),
          email: $('#projector_tell_availability [name="email"]').val(),
        },
        function (data) {
          if (data.status == "error") {
            message = txt_62619_blad_pobrania;
            Alertek.show_alert(message);
            return false;
          }
          if (!data.sms_active) {
            $("#sms_active_checkbox,#sms_active_group").remove();
          }
          if (data.client && data.client.phone) {
            $("#sms_active_checkbox input").prop("checked", true);
            $("#sms_active_checkbox,#sms_active_group").show();
            $('#sms_active_group [name="phone"]').val(data.client.phone);
          }
        }
      );
    } else {
      $("#projector_tell_availability").find("input").attr("disabled", true);
      $("body").addClass("alertek-disabled");
    }
  }
  const { price } = projectorObj.currentSizeObj;
  if (typeof price !== "undefined" && $("#projector_rebateNumber").length) {
    $(
      "#projector_form .rebate_number__literal.--seventh, #projector_form .rebate_number__literal.--eighth, #projector_form .rebate_number__price, #projector_form .rebate_number__unit:last-child"
    ).addClass("--active");
    const { rebateNumber } = price;
    if ($(".rebate_number__item").length > 1) {
      $(".rebate_number__item").each(function (index) {
        $(this)
          .find(".rebate_number__price")
          .text(rebateNumber.items[index].price_net_formatted);
      });
    } else {
      $(".rebate_number__price").text(rebateNumber.nextprice_net_formatted);
    }
  }
}
function projectorEndInitFunctionCallback() {
  app_shop.fn.init_multi_vers();
  simple_tooltip("span.show_tip", "n59581_tooltip");
  if (product_data.base_price && product_data.base_price.promotiontilldate) {
    $("#projector_prices_wrapper").after(
      '<div id="CDT" class="product_section CDT-uniw"></div>'
    );
    app_shop.vars.countDown = new CountdownTimer(
      $("#CDT"),
      new Date(product_data.base_price.promotiontilldate + "T23:59:59+01:00")
    );
    app_shop.vars.countDown.countDown();
  }
}
var pr_goToOpinion = function () {
  $("#opinions_58676").click();
  $("html,body").animate(
    { scrollTop: $("#component_projector_opinions").offset().top - 120 },
    "fast"
  );
};
app_shop.run(
  function () {
    var versionSub = $(
      "#projector_form div.product_section.versions div.product_section_sub"
    );
    versionSub.find(".select_button").length > 8
      ? versionSub.addClass("versions_scroll")
      : versionSub.removeClass("versions_scroll");
  },
  1,
  "#projector_form",
  true
);
var projectorv3_disable_ajax = "1";
projectorObj = new projectorClass();
projectorObj.txt["additional_texts"] = "";
projectorObj.txt["za"] = " za ";
projectorObj.txt["taniej"] = "% (";
projectorObj.txt["oszczedzasz"] = "Oszczędzasz ";
projectorObj.txt["wzestawie"] = "), kupując w zestawie. ";
projectorObj.txt["niedostepny"] = "Produkt niedostępny";
projectorObj.txt["tylkotel"] = "Cena na telefon. Skontaktuj się ze sprzedawcą.";
projectorObj.txt["tylko_punkty"] =
  "Produkt dostępny tylko w programie lojalnościowym.";
projectorObj.txt["za_malo_punktow"] = "Nie masz wystarczającej ilości punktów";
projectorObj.txt["gratis"] = "Wysyłka gratis!";
projectorObj.txt["niemastanu"] = "Produkt niedostępny";
projectorObj.txt["status_24"] = "w ciągu 24h";
projectorObj.txt["status_natychmiast"] = "Natychmiast";
projectorObj.txt["day"] = " dzień ";
projectorObj.txt["days"] = " dni  ";
projectorObj.txt["hour"] = " godz.";
projectorObj.txt["hours"] = " godz. ";
projectorObj.txt["min"] = " min ";
projectorObj.txt["mins"] = " min. ";
projectorObj.txt["proc"] = "%";
projectorObj.txt["wybrany_rozmiar"] = "Rozmiar:";
projectorObj.txt["wysylka"] = "";
projectorObj.txt["wysylka_za"] = " w ciągu ";
projectorObj.txt["dostepny"] = "";
projectorObj.txt["dostepny_za"] = "za ";
projectorObj.txt["pkt"] = " pkt.";
projectorObj.txt["status_amount_full"] = "większa ilość";
projectorObj.txt["status_amount_null"] = "brak w magazynie";
projectorObj.txt["forpointsonly"] = "Produkt możesz kupić za punkty.";
projectorObj.txt["disable_desc"] = "Skontaktuj się z nami.";
projectorObj.txt["choiceSize"] = "Wybierz rozmiar";
projectorObj.txt["maksymalnie"] = "Maksymalnie możesz dodać";
projectorObj.txt["minimalnie"] = "Minimalnie musisz zamówić ";
projectorObj.txt["brak_magazyn"] = "Brak na magazynie";
projectorObj.txt["koszt_od"] = "Koszt od ";
projectorObj.txt["wysylka_total_begin"] = "<br/>(z tow. z koszyka ";
projectorObj.txt["wysylka_total_end"] = ")";
projectorObj.txt["nawias_end"] = "). ";
projectorObj.txt["gratis_produkt"] = "Gratis!";
projectorObj.txt["virtual_inbasket"] = "Produkt znajduje się już w koszyku";
projectorObj.txt["infinity"] = "";
projectorObj.txt["ilosc_mm"] = "Aktualnie w naszym magazynie mamy <b>%d</b>.";
projectorObj.txt["ilosc_mo"] =
  "Kolejne <b>%d</b> możemy sprowadzić na zamówienie.";
projectorObj.txt["ilosc_mo_inf"] =
  "Dowolną ilość możemy sprawadzić na zamówienie.";
projectorObj.txt["size_select_functionality"] = "0";
projectorObj.txt["sizes_projector_functionality"] = "1";
projectorObj.txt["size_select_label"] = "Rozmiar:";
projectorObj.txt["size_select_tell_availability"] = "Powiadom o dostępności";
projectorObj.txt["size_select_last_unit"] = "Ostatnia sztuka!";
projectorObj.txt["size_select_few_last_units"] = "Ostatnie sztuki!";
var Projector_txt_maksymalnie = "Maksymalnie możesz zamówić: ";
var Projector_txt_minimalnie = projectorObj.txt["minimalnie"];
var Projector_txt_brak_magazyn = "Brak na magazynie";
var Projector_txt_produkt_niedostepny = "Produkt niedostępny";
var Projector_txt_podajilosc = "Podaj ilość dla wybranego rozmiaru";
var Projector_txt_zalogujsie = "Zaloguj się";
var Projector_txt_closedialog = "";
var txt_raty_button1 = "Oblicz raty wybranego produktu";
var txt_raty_button2 = "Oblicz raty wraz z kwotą z koszyka ";
var txt_62619_cms_table = "Tabela rozmiarów";
var txt_toltip_1 =
  "Cena najtańszej z dostępnych form wysyłki z uwzględnieniem twojego koszyka. Pełną listę cen i kurierów otrzymasz podczas składania zamówienia.";
var txt_toltip_2 =
  "Program lojalnościowy dostępny jest tylko dla zalogowanych klientów.";
var txt_toltip_2a =
  "Możesz zamienić zgromadzone punkty lojalnościowe na ten produkt. Obecnie masz [xxx] punktów.";
var txt_toltip_3 =
  "Po opłaceniu zamówienia przyznamy ci taką ilość punktów lojalnościowych. Żeby zbierać punkty musisz być zarejestrowanym klientem.";
var txt_toltip_4 = "";
var prepaid = "Płatność przed wysyłką";
var dvp = "Płatność przy odbiorze";
var day_txt = " dzień ";
var days_txt = " dni ";
var hour_txt = " godz. ";
var hours_txt = " godz. ";
var min_txt = " min.";
var txt_24h = "24h";
var txt_do_24h = "do 24h";
var delivery_txt = "Sam transport zajmie ";
var delivery_txt2 = "Przygotowanie do odbioru osobistego zajmie ";
var delivery_txt3 = "Forma dostawy dostępna od ";
var gratis_txt = "Gratis!";
app_shop.txt.txt_74629_1 = "Do końca promocji: ";
app_shop.txt.txt_74629_2 = "Wybierz inną opcję.";
app_shop.txt.txt_74629_3 = "dni";
app_shop.txt.txt_74629_4 = "godzin ";
app_shop.txt.txt_74629_5 = "minut ";
app_shop.txt.txt_74629_6 = "sekund ";
app_shop.txt.txt_74629_7 =
  "Przepraszamy, ale nie zdefiniowaliśmy standardowego kosztu dostawy, zostanie on ustalony indywidualnie przez naszą obsługę po przyjęciu zamówienia.";
var txt_shipping_8 = " dzisiaj!";
var txt_shipping_9 = " w poniedziałek ";
var txt_shipping_10 = " we wtorek ";
var txt_shipping_11 = " w środę ";
var txt_shipping_12 = " w czwartek ";
var txt_shipping_13 = " w piątek ";
var txt_shipping_14 = " w sobotę ";
var txt_shipping_15 = " w niedzielę ";
var txt_shipping_16 = "jutro!";
app_shop.txt.txt_74629_8 = "Proszę wybrać rozmiar";
projectorObj.options["friendly_shipping_format"] = [
  txt_shipping_8,
  txt_shipping_9,
  txt_shipping_10,
  txt_shipping_11,
  txt_shipping_12,
  txt_shipping_13,
  txt_shipping_14,
  txt_shipping_15,
];
app_shop.txt.txt_74629_9 = "Twój produkt jest gotowy do wysyłki";
app_shop.txt.txt_74629_10 =
  "Twój produkt jest już spakowany i gotowy do odebrania przez kuriera";
app_shop.txt.txt_74629_11 = "Czas przygotowania produktu do wysyłki";
app_shop.txt.txt_74629_11a = "Gotowy do wysyłki";
app_shop.txt.txt_74629_11b =
  "Produkt jest spakowany i możliwy do odebrania przez kuriera";
app_shop.txt.txt_74629_12 =
  "Jest to czas, w którym produkt jest pakowany i przygotowywany do odebrania przez kuriera";
app_shop.txt.txt_74629_13 = "";
app_shop.txt.txt_74629_14 = "Przygotowanie do odbioru osobistego zajmie do 24h";
app_shop.txt.txt_74629_15 = "Przygotowanie do odbioru osobistego zajmie 24h";
app_shop.txt.txt_74629_16 = "Przygotowanie do odbioru osobistego zajmie ";
app_shop.txt.txt_74629_17 = "Przesyłka będzie u Ciebie dzisiaj! ";
app_shop.txt.txt_74629_18 = "Przesyłka będzie u Ciebie jutro!";
app_shop.txt.txt_74629_19 = "Przesyłka będzie u Ciebie za ";
app_shop.txt.txt_74629_16467 = "Zamknij okno";
var txt_62619_nieprawidlowy_email = "Niepoprawny adres email.";
var txt_62619_przekroczono_liczbe =
  "Przekroczono liczbę dodanych powiadomień w ciągu dnia.";
var txt_62619_podczas_dodawania =
  "Podczas dodawania produktu wystąpił błąd. Sprawdź poprawność wprowadzonych danych";
var txt_62619_produkt_dodany =
  "Produkt został poprawnie dodany do powiadomień.";
var txt_62619_blad_pobrania =
  "Wystąpił problem z połączeniem. Wykonaj czynność ponownie.";
var txt_62619_bledny_email =
  "Błędnie wpisany e-mail. Wpisz pełny adres e-mail, np. jan@kowalski.com ";
var txt_62619_wpisz_telefon = "Wpisz swój telefon. ";
var fashionGallery_new = "";
function CountdownTimer(elm, tl) {
  this.initialize.apply(this, arguments);
}
CountdownTimer.prototype = {
  initialize: function (elm, tl) {
    this.elem = elm;
    this.tl = tl;
    this.tid = "";
  },
  newData: function (tl) {
    this.tl = tl;
  },
  countDown: function () {
    var timer = "";
    var today = new Date();
    var day = Math.floor((this.tl - today) / (24 * 60 * 60 * 1000));
    var hour = Math.floor(
      ((this.tl - today) % (24 * 60 * 60 * 1000)) / (60 * 60 * 1000)
    );
    var min =
      Math.floor(((this.tl - today) % (24 * 60 * 60 * 1000)) / (60 * 1000)) %
      60;
    var sec =
      (Math.floor(((this.tl - today) % (24 * 60 * 60 * 1000)) / 1000) % 60) %
      60;
    var me = this;
    if (this.tl - today > 0) {
      timer +=
        '<label class="projector_label">' +
        app_shop.txt.txt_74629_1 +
        "</label><div>";
      if (this.addZero(day) > 0)
        timer +=
          '<span class="number-wrapper"><div class="line"></div><div class="caption">' +
          app_shop.txt.txt_74629_3 +
          '</div><span class="number day">' +
          this.addZero(day) +
          "</span></span>";
      timer +=
        '<span class="number-wrapper"><div class="line"></div><div class="caption">' +
        app_shop.txt.txt_74629_4 +
        '</div><span class="number hour">' +
        this.addZero(hour) +
        "</span></span>";
      timer +=
        '<span class="number-wrapper"><div class="line"></div><div class="caption">' +
        app_shop.txt.txt_74629_5 +
        '</div><span class="number min">' +
        this.addZero(min) +
        '</span></span><span class="number-wrapper"><div class="line"></div><div class="caption">' +
        app_shop.txt.txt_74629_6 +
        '</div><span class="number sec">' +
        this.addZero(sec) +
        "</span></span></div>";
      this.elem.html(timer);
      this.tid = setTimeout(function () {
        me.countDown();
      }, 1000);
    } else {
      clearTimeout(this.tid);
      this.elem.remove();
      return;
    }
  },
  addZero: function (num) {
    return ("0" + num).slice(-2);
  },
};
app_shop.run(
  function BenefitsMove() {
    $("#projector_points_wrapper").before($("#projector_benefits"));
  },
  "all",
  "#projector_benefits",
  true
);
app_shop.run(
  function projectorEnclosures() {
    $(".enclosures__name.--audio, .enclosures__name.--video").on(
      "click",
      function projectorEnclosuresPlayer() {
        let enclosuresDialog;
        if ($(this).hasClass("--audio")) {
          enclosuresDialog = `<audio src="${$(this).attr(
            "href"
          )}"controls autoplay></audio>`;
        } else {
          enclosuresDialog = `<video width="100%"height="478"src="${$(
            this
          ).attr("href")}"controls autoplay></video>`;
        }
        $("body").dialog({
          content: enclosuresDialog,
          fixed: false,
          fitToWindow: false,
          wrapperClass: "enclosures__dialog",
        });
        return false;
      }
    );
    if (typeof ProjectorPhotoSwipe === "function") {
      $(".enclosures__name.--image").on(
        "click",
        function projectorEnclosuresPhotoSwipeClick(e) {
          e.preventDefault();
          const slickIndex = parseInt($(this).data("index"), 10);
          app_shop.vars.projectorEnclosuresPhotoSwipe.init(slickIndex);
          return false;
        }
      );
      $(".enclosures__name.--image").each(function photosSliderEnclosuresIndex(
        index
      ) {
        $(this).attr("data-index", index);
      });
      app_shop.vars.projectorEnclosuresPhotoSwipe = new ProjectorPhotoSwipe({
        selector: ".enclosures__name.--image",
        pswp: ".pswp",
      });
    }
  },
  "all",
  "#projector_enclosures",
  true
);
app_shop.run(
  function questionsList() {
    $(".questions__question").on("click", function questionsListClick() {
      $(this).parent().toggleClass("--active");
      return false;
    });
    $(".questions__button").on("click", function questionsListButton() {
      $(".askforproduct").dialog({ wrappContent: true });
      return false;
    });
  },
  "all",
  "#product_questions_list",
  true
);
app_shop.run(
  function askforproductValidate() {
    $("#askforproduct__email_input, #askforproduct__question_input").on(
      "input",
      function askforproductValidateInput() {
        clearTimeout(app_shop.formControl.timeHandle);
        const obj = $(this);
        app_shop.formControl.timeHandle = setTimeout(
          function askforproductValidateInputTimeout() {
            app_shop.formControl.validate(obj);
          },
          500
        );
      }
    );
    $(".askforproduct__button").on(
      "click",
      function askforproductValidateButton() {
        return app_shop.formControl.checkForm(
          $(this).parents(".askforproduct__form")
        );
      }
    );
  },
  "all",
  ".askforproduct",
  true
);
app_shop.run(
  function moreOpinions() {
    $(".opinions__more_txt").on("click", function clickMoreOpinions(e) {
      e.preventDefault();
      $('#opinions_section .opinions_list [data-hide="true"]').attr(
        "data-hide",
        false
      );
      $(".opinions__more").hide();
      return false;
    });
  },
  "all",
  ".opinions__more",
  true
);
app_shop.vars.opinions_empty_input = "Proszę wypełnić to pole.";
app_shop.vars.opinions_not_email = "Podano niepoprawny adres email.";
app_shop.fn.validateEmail = function (email) {
  var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
  return re.test(String(email).toLowerCase());
};
app_shop.fn.opinionsValidate = function (form) {
  var inputs = form.find("input[required]");
  $.each(inputs, function (index, el) {
    $(el).parent().removeClass("has-error").find(".validate_message").remove();
    if (!$(el).val()) {
      $(el)
        .parent()
        .addClass("has-error")
        .append(
          '<span class="help-block validate_message text-danger">' +
            app_shop.vars.opinions_empty_input +
            "</span>"
        );
    } else if (
      $(el).prop("type") === "email" &&
      !app_shop.fn.validateEmail($(el).val())
    ) {
      $(el)
        .parent()
        .addClass("has-error")
        .append(
          '<span class="help-block validate_message text-danger">' +
            app_shop.vars.opinions_not_email +
            "</span>"
        );
    }
  });
  if (form.find(".has-error").length) {
    return false;
  }
  return true;
};
var txt_1_69363 = "Wybierz najwygodniejszy dla ciebie sposób wysyłki zwrotu";
$(".step3d #return_go_next").live("click", function () {
  if ($(".step3d .order1_delitem_radio input").size()) {
    if (!$(".step3d .order1_delitem_radio input:checked").size()) {
      Alertek.show_alert(txt_1_69363);
      return false;
    } else {
    }
  }
});
$(".step3d div.return_delitem").live("click", function () {
  $(".step3d div.return_delitem.active").removeClass("active");
  $(this)
    .addClass("active")
    .find("input.order1_delitem_radio")
    .prop("checked", true);
});
var dialog_button_class = "btn --solid";
app_shop.run(
  function () {
    $("a.show_status").click(function () {
      $("body").dialog({
        content:
          '<div style="text-align:left">' + $(this).next().html() + "</div>",
        fixed: false,
        fitToWindow: false,
      });
      $("<h2>" + $(this).text() + "</h2>").prependTo("#dialog_wrapper");
      if (dialog_button_class === "")
        $(
          '<div id="ui-dialog_button"><button class="btn-small" onclick="$(\'#dialog_close\').click();">' +
            txt_62619_close_window +
            "</button></div>"
        ).appendTo("#dialog_wrapper");
      else
        $(
          '<div id="ui-dialog_button"><button class="' +
            dialog_button_class +
            '" onclick="$(\'#dialog_close\').click();">' +
            txt_62619_close_window +
            "</button></div>"
        ).appendTo("#dialog_wrapper");
      return false;
    });
    $("a.orderdetails_info_cancel").removeAttr("onclick");
    $("a.orderdetails_info_cancel").click(function () {
      thisHref = $(this).attr("href");
      $("#menu_notice").dialog({ wrappContent: "true" });
      $("#menu_notice button.prepaid_confirm").click(function () {
        self.location.href = thisHref;
      });
      return false;
    });
  },
  "all",
  ".prepaid-buttons"
);
var txt_1_69372 = "Wybierz sposób zwrotu produktów";
var txt_1_69372_param = "Wybierz parametr sposobu zwrotu produktów";
var txt_1_69372_tak = "Potwierdzam";
var txt_1_69372_confirm_header = "Czy potwierdzasz ...?";
var txt_1_fill_phone =
  "Aby wybrać tę metodę zwrotu musisz uzupełnić numer telefonu w ustawieniach swojego konta";
$("div.return_type.disabled_inpost").live("click", function () {
  Alertek.show_alert(txt_1_fill_phone);
});
$("div.return_type.choose_return_type:not(.disabled_inpost)").live(
  "click",
  function () {
    var id = $(this).find("input.return_type").val();
    $(this).addClass("current_method");
    $(".return_type.choose_return_type.active").removeClass("active");
    $(this).addClass("active").find("input.return_type").prop("checked", true);
    $(
      ".return_type.choose_return_type:not(.current_method) .return_methods_param > input, div.return_delitem_items:not(#delitem_item" +
        id +
        ") .return_methods_param > input"
    ).prop("checked", false);
    $("div.return_delivery_form, div.return_delitem_items").hide();
    if ($("#delitem_item" + id).size()) {
      $("div.return_delivery_form, #delitem_item" + id).show();
      $("#delitem_item" + id)
        .find("div.return_delitem:first")
        .click();
    }
    $(this).removeClass("current_method");
  }
);
$(".step3 #return_go_next").live("click", function (e) {
  if ($(".step3 div.return_type input").size()) {
    if (!$(".step3 div.return_type input:checked").size()) {
      e.preventDefault();
      Alertek.show_alert(txt_1_69372);
      return false;
    } else if (
      $(".active .return_methods_param > input").length &&
      !$(".active .return_methods_param > input:checked").length
    ) {
      e.preventDefault();
      Alertek.show_alert(txt_1_69372_param);
      return false;
    } else {
      $("div.progress_bar_wrapper")
        .removeClass("pb_step3")
        .addClass("pb_step4");
    }
  }
});
$(".return_methods_param > input").live("change", function () {
  if (!$(this).parents().hasClass("disabled_inpost")) {
    if (
      $(this).attr("checked") &&
      $(this).parent().find(".return_confirmation_message").length
    ) {
      confirmReturnParam($(this).parent());
    }
  } else {
    $(this).prop("checked", false);
    return false;
  }
});
$(".step3 div.return_delitem").live("click", function () {
  $(".step3 div.return_delitem.active").removeClass("active");
  $(this)
    .addClass("active")
    .find("input.order1_delitem_radio")
    .prop("checked", true);
  $(
    ".step3 div.return_delitem:not(.active) .return_methods_param > input"
  ).prop("checked", false);
});
var remove_param = true;
function confirmReturnParam(obj) {
  $("#ui-dialog").remove();
  dialogHTML = "";
  dialogHTML +=
    '<div id="menu_notice" class="--rma"><strong>' +
    obj.find(".return_confirmation_message").html() +
    "</strong></div>";
  $('<div id="ui-dialog">' + dialogHTML + "</div>").appendTo("body");
  $("<h2>" + txt_1_69372_confirm_header + "</h2>").prependTo("#menu_notice");
  $("#ui-dialog").dialog({
    wrappContent: true,
    fixed: false,
    fitToWindow: false,
    beforeShow: function () {
      $(
        '<div id="ui-dialog_button"><button onclick="remove_param = false;$(\'#dialog_close\').click();">' +
          txt_1_69372_tak +
          "</button></div>"
      ).appendTo("#dialog_wrapper");
    },
    afterCloseFn: function () {
      if (remove_param) {
        unsetMethodParam();
      }
      remove_param = true;
    },
  });
}
function unsetMethodParam() {
  $(".active .return_methods_param > input").prop("checked", false);
}
app_shop.run(
  function () {
    $(".return_type.active").click();
  },
  "all",
  ".return_type"
);
app_shop.run(
  function returnsOpenValidate() {
    $("#returns_open__number_input, #returns_open__email_input").on(
      "input",
      function returnsOpenValidateInput() {
        clearTimeout(app_shop.formControl.timeHandle);
        const obj = $(this);
        app_shop.formControl.timeHandle = setTimeout(
          function returnsOpenValidateInputimeout() {
            app_shop.formControl.validate(obj);
          },
          500
        );
      }
    );
    $(".returns_open__button").on(
      "click",
      function returnsOpenValidateButton() {
        return app_shop.formControl.checkForm(
          $(this).parents(".returns_open__form")
        );
      }
    );
  },
  "all",
  ".returns_open"
);
var txt_1_69260_1 = "Wybierz produkty do zwrotu";
var txt_1_odznacz_w_p = "Odznacz wszystkie produkty ";
var txt_1_zaznacz_w_p = "Zaznacz wszystkie produkty";
var txt_1_max_ret_amount = "Maksymalnie możesz zwrócić";
var txt_1_new_button = "true";
app_shop.run(
  function () {
    goNext = function () {
      var flaga = false;
      $("tr.productslist_item").each(function () {
        if ($(this).find(".productslist_product_action input:checked").size()) {
          if (
            $(this)
              .find('.productslist_product_quantity input[type="text"]')
              .val() != 0
          ) {
            flaga = true;
          }
        }
      });
      return flaga;
    };
    Basketedit.getValues = function (obj) {
      var element = obj.parent();
      var amount = element.find("input[name=data_amount]").val();
      var unit_sellby = element.find("input[name=data_unit_sellby]").val();
      var unit = element.find("input[name=data_unit]").val();
      var precision = element.find("input[name=data_unit_precision]").val();
      return {
        precision: precision,
        unit_sellby: unit_sellby,
        unit: unit,
        amount: amount,
      };
    };
    Basketedit.number_check = function (obj, flag) {
      var element = obj;
      var itemValues = Basketedit.getValues(obj);
      var flag = flag || true;
      if (itemValues.unit_sellby == "") var basketedit_sellby = 1;
      else var basketedit_sellby = itemValues.unit_sellby;
      var basketedit_unit = itemValues.unit;
      var basketedit_unitprecission = itemValues.precision;
      var basketedit_amount = itemValues.amount;
      var inputValue = element.val();
      inputValue = parseFloat(inputValue);
      inputValue = inputValue.toFixed(6);
      inputValue = parseFloat(inputValue);
      var inputToSelect = element
        .parents("tr.productslist_item")
        .find("td.productslist_product_action input");
      if (flag) {
        if (inputValue > 0) {
          inputToSelect.prop("checked", true);
        } else {
          inputToSelect.prop("checked", false);
        }
      }
      if (basketedit_sellby == "1") {
        if (
          Math.round(inputValue) > parseInt(basketedit_amount) &&
          isFinite(basketedit_amount) &&
          basketedit_amount != "-1"
        ) {
          Alertek.show_alert(
            txt_1_max_ret_amount +
              " " +
              basketedit_amount +
              " " +
              basketedit_unit
          );
          element.val(basketedit_amount);
        } else {
          element.val(
            Basketedit.roundNumber(
              Basketedit.if_isanumber(inputValue, basketedit_sellby),
              basketedit_unitprecission
            )
          );
        }
      } else {
        basketedit_unitprecission = parseInt(basketedit_unitprecission);
        if (
          inputValue >= parseInt(basketedit_amount) &&
          isFinite(basketedit_amount) &&
          basketedit_amount != "-1"
        ) {
          Alertek.show_alert(
            txt_1_max_ret_amount +
              Basketedit.roundNumber(
                Math.floor(basketedit_amount / basketedit_sellby) *
                  basketedit_sellby,
                basketedit_unitprecission
              ) +
              " " +
              basketedit_unit
          );
          element.val(
            Basketedit.roundNumber(
              Math.floor(basketedit_amount / basketedit_sellby) *
                basketedit_sellby,
              basketedit_unitprecission
            )
          );
        } else {
          var returnValue;
          var divNoMod = Math.abs(
            Math.floor((inputValue / basketedit_sellby).toFixed(6))
          );
          if (!divNoMod) {
            returnValue = basketedit_sellby;
          } else {
            if (
              parseFloat((divNoMod * basketedit_sellby).toFixed(6)) ==
              inputValue
            ) {
              returnValue = (divNoMod * basketedit_sellby).toFixed(
                basketedit_unitprecission
              );
            } else {
              if (divNoMod * basketedit_sellby < inputValue) {
                returnValue = ((divNoMod + 1) * basketedit_sellby).toFixed(
                  basketedit_unitprecission
                );
              } else
                returnValue = Math.abs(
                  (Math.ceil(inputValue) * basketedit_sellby).toFixed(
                    basketedit_unitprecission
                  )
                );
            }
          }
          element.val(returnValue);
        }
      }
    };
    $("td.productslist_product_action input").live("click", function () {
      var element = $(this)
        .parents("tr.productslist_item")
        .find('td.productslist_product_quantity input[type="text"]');
      if ($(this).is(":checked")) {
        var sellBy = element.nextAll('input[name="data_unit_sellby"]').val();
        element.val(sellBy);
        Basketedit.number_check(element, false);
      } else {
        element.val(0);
      }
    });
    if ($(".productslist_product_action input").not(":checked").size()) {
      $(".step2 .select_all").html(txt_1_zaznacz_w_p);
      if (txt_1_new_button !== "")
        $(".step2 .select_all").removeClass("icon-minus").addClass("icon-plus");
    } else {
      $(".step2 .select_all").html(txt_1_odznacz_w_p);
      if (txt_1_new_button !== "")
        $(".step2 .select_all").removeClass("icon-plus").addClass("icon-minus");
    }
    $(".step2 .select_all").live("click", function () {
      if ($(".productslist_product_action input").not(":checked").size()) {
        $(".productslist_product_action input").prop("checked", true);
        $(".step2 .select_all").html(txt_1_odznacz_w_p);
        if (txt_1_new_button !== "")
          $(".step2 .select_all")
            .removeClass("icon-plus")
            .addClass("icon-minus");
      } else {
        $(".productslist_product_action input").prop("checked", false);
        $(".step2 .select_all").html(txt_1_zaznacz_w_p);
        if (txt_1_new_button !== "")
          $(".step2 .select_all")
            .removeClass("icon-minus")
            .addClass("icon-plus");
      }
      $("td.productslist_product_action input").each(function () {
        var element = $(this)
          .parents("tr.productslist_item")
          .find('td.productslist_product_quantity input[type="text"]');
        if ($(this).is(":checked")) {
          var sellBy = element.nextAll('input[name="data_unit_sellby"]').val();
          element.val(sellBy);
          Basketedit.number_check(element, false);
        } else {
          element.val(0);
        }
      });
      return false;
    });
    $(".step2 input.return_product")
      .die()
      .live("click", function () {
        $(".step2 textarea.return_comment").toggle();
      });
    $(".step2 #return_go_next").live("click", function () {
      if (!goNext()) {
        if ($(".rma_products_page").length) {
          Alertek.show_alert(txt_1_69260);
        } else {
          Alertek.show_alert(txt_1_69260_1);
        }
        return false;
      } else {
        $("div.progress_bar_wrapper")
          .removeClass("pb_step2")
          .addClass("pb_step3");
      }
    });
    $("tr.productslist_comment a.addMoreFiles")
      .unbind()
      .on("click", function () {
        var moreFilesInp = $(this)
          .parents(".prodl_comment_right")
          .find("div.prodl_comment_foto")
          .last();
        moreFilesInp.after(moreFilesInp.clone());
        moreFilesInp.next().find("input").val("");
        return false;
      });
  },
  "all",
  ".returns_productslist"
);
var txt_1_69378 = "Wybierz formę zwrotu należności";
var validationTextErrors = [];
validationTextErrors["invalid_bank_acccount"] =
  "Wprowadzony numer konta bankowego jest nieprawidłowy.";
app_shop.run(
  function () {
    $('.step5 [data-validation="bank_account"]').keyup();
  },
  "all",
  '.step5 [data-validation="bank_account"]'
);
var txt_1_69376 = "Wybierz adres punktu zwrotu";
$(".step4a div.pickupl_return").live("click", function () {
  $(".step4a div.pickupl_return").removeClass("active");
  $(this).addClass("active").find("input").prop("checked", true);
});
app_shop.run(
  function () {
    $(".step4a #return_go_next").live("click", function () {
      if (!$(".step4a div.pickupl_return input:checked").size()) {
        Alertek.show_alert(txt_1_69376);
        return false;
      } else {
        $("div.progress_bar_wrapper")
          .removeClass("pb_step4")
          .addClass("pb_step5");
      }
    });
  },
  "all",
  ".pickup_return_list_form .pickupl_return"
);
function init_rma_calendar() {
  $("#rma_add_form_begin_ymd").datepicker({
    dateFormat: iaical_dateFormat,
    dayNamesMin: iaical_daysShort,
    monthNames: iaical_monthNames,
    onSelect: rma_add.setTime,
    firstDay: iaical_firstDay,
  });
}
var rma_add_alert = "Wypełnij wszystkie pola formularza.";
var rma_add_msg1 = "Podaj nazwę produktu";
var rma_add_msg2 = "Podaj numer seryjny produktu";
var rma_add_msg3 = "Podaj datę zakupu produktu";
var rma_add_msg4 = "Opisz usterkę";
var rma_add_msg5 = "Opisz miejsce zakupu produktu";
var rma_add_msg6 = "Podaj adres, na który chcesz otrzymać zwrot pieniędzy";
var rma_add_msg7 = "Podaj numer konta bankowego";
var rma_add_msg8 = "Podaj dane do czeku";
if (typeof rma_add_paymentTrigger === undefined) {
  var rma_add_paymentTrigger = 1;
}
app_shop.run(
  function () {
    $("#rma_add_form")
      .find("input, textarea")
      .on("input", function () {
        clearTimeout(app_shop.formControl.timeHandle);
        obj = $(this);
        app_shop.formControl.timeHandle = setTimeout(function () {
          app_shop.formControl.validate(obj);
        }, 500);
      });
    $("a#rma_add_form_submit").on("click", function () {
      if (app_shop.formControl.checkForm($(this).parents("form")) == true) {
        $("form#rma_add_form").submit();
      }
      return false;
    });
  },
  "all",
  "#rma_add_form"
);
app_shop.run(
  function () {
    if (app_shop.vars.rma_action) {
      init_rma_calendar();
    }
  },
  "all",
  ".rma_add_form_outline"
);
var rma_add = {
  placeTrigger: 0,
  setPlace: function (idek) {
    $(".rma_add_form_boxsub_hidden").css("display", "none");
    $("#" + idek).css("display", "block");
    if (idek == "rma_add_form_buyplace_other") {
      rma_add.placeTrigger = 1;
    } else {
      rma_add.placeTrigger = 0;
    }
  },
  setPayment: function (idek) {
    $(".rma_add_form_boxsub2_hidden").css("display", "none");
    $("#" + idek).css("display", "block");
    switch (idek) {
      case "rma_add_form_payp":
        rma_add_paymentTrigger = 1;
        break;
      case "rma_add_form_payb":
        rma_add_paymentTrigger = 2;
        break;
      case "rma_add_form_payc":
        rma_add_paymentTrigger = 3;
        break;
      case "rma_add_form_payt":
        rma_add_paymentTrigger = 4;
        break;
    }
    rma_add.checkInps();
  },
  hideInfoText: function (id, i) {},
  showInfo: function (id, error, text) {
    if (error) {
      document.getElementById(id + "_off").style.display = "";
      document.getElementById(id + "_on").style.display = "none";
      if (text) {
        document.getElementById(id + "_help").style.display = "block";
        document.getElementById(id + "_help").firstChild.innerHTML = text;
        rma_add.hideInfoText(id, 5);
      } else {
        document.getElementById(id + "_help").style.display = "none";
      }
    } else {
      document.getElementById(id + "_off").style.display = "none";
      document.getElementById(id + "_on").style.display = "";
      document.getElementById(id + "_help").style.display = "none";
    }
  },
  checkInps: function (option) {},
  setTime: function (dateText, inst) {
    var czas = $("#rma_add_form_begin_ymd").datepicker("getDate");
    $("#rma_add_form_beginy").val(czas.getFullYear());
    $("#rma_add_form_beginm").val(czas.getMonth() + 1);
    $("#rma_add_form_begind").val(czas.getDate());
    app_shop.formControl.validate($("#rma_add_form_begin_ymd"));
  },
  chooseSite: function (idek) {
    var wart = idek.slice(5);
    $(".rma_add_form_stock").removeClass("rmaf_selected");
    $("#" + idek).addClass("rmaf_selected");
    $("#rma_stock").val(wart);
  },
};
var form_validation_error = "";
var dialog_button_class = "btn --solid";
app_shop.run(
  function () {
    $("a.show_status").click(function () {
      $("body").dialog({
        content:
          '<div style="text-align:left">' + $(this).next().html() + "</div>",
        fixed: false,
        fitToWindow: false,
      });
      $("<h2>" + $(this).text() + "</h2>").prependTo("#dialog_wrapper");
      if (dialog_button_class === "")
        $(
          '<div id="ui-dialog_button"><button class="btn-small" onclick="$(\'#dialog_close\').click();">' +
            txt_62619_close_window +
            "</button></div>"
        ).appendTo("#dialog_wrapper");
      else
        $(
          '<div id="ui-dialog_button"><button class="' +
            dialog_button_class +
            '" onclick="$(\'#dialog_close\').click();">' +
            txt_62619_close_window +
            "</button></div>"
        ).appendTo("#dialog_wrapper");
      return false;
    });
    $("a.orderdetails_info_cancel").removeAttr("onclick");
    $("a.orderdetails_info_cancel").click(function () {
      thisHref = $(this).attr("href");
      $("#menu_notice").dialog({ wrappContent: "true" });
      $("#menu_notice button.prepaid_confirm").click(function () {
        self.location.href = thisHref;
      });
      return false;
    });
  },
  "all",
  ".rma_orderdetails_info"
);
app_shop.run(
  function () {
    $(".rma_af_input")
      .find("input, textarea")
      .on("input", function () {
        clearTimeout(app_shop.formControl.timeHandle);
        obj = $(this);
        app_shop.formControl.timeHandle = setTimeout(function () {
          app_shop.formControl.validate(obj);
        }, 500);
      });
    $(".rma_af_buttons > button").on("click", function () {
      return app_shop.formControl.checkForm($(this).parents("form"));
    });
  },
  "all",
  ".rma_added_files"
);
$(".step2 .saveQuantity").live("click", function () {
  $(".productslist_product_action input").prop("checked", true);
  return false;
});
$(".step1 a.orders_more").live("click", function () {
  $(".step1").hide();
  $(".step2").show();
  return false;
});
$(".step2 input.return_product").live("click", function () {
  $(".step2 textarea.return_comment").toggle();
});
$(".step5a div.return_form").live("click", function () {
  $(".step5a div.return_form").removeClass("active");
  $(this).addClass("active").find("input").prop("checked", true);
  if ($(this).is("#disable_button")) {
    if ($("#disable_button input.return_form").val().length < 3) {
      $("#return_go_next").attr("disabled", "disabled").css("opacity", "0.6");
    }
  }
});
$("label.return_type").live("click", function () {
  $("label.return_type.active").removeClass("active");
  $(this).addClass("active");
});
$(function () {
  $("td.rma-remarks").each(function () {
    $(this).attr("colspan", $(".orders.table-stroke thead th").size() - 1);
  });
  $("a.rma_attach_file").on("click", function () {
    $(this).closest("form").find("div.rma_af_files").show();
    $(this).hide();
  });
  init_orderdetails_info();
  $("#disable_button input.return_form").keyup(function () {
    if ($("#disable_button input.return_form").val().length < 3) {
      $("#return_go_next").attr("disabled", "disabled").css("opacity", "0.6");
    } else {
      $("#return_go_next").attr("disabled", false).css("opacity", "1");
    }
  });
});
var rmaHideSpeed = 200;
var rmaLessInfo = "";
var rma_cancel_alert = "";
var rma_list = {
  rmaMoreInfo: $("rma_list_item1")
    .eq(0)
    .children(".rma_list_item_operation")
    .html(),
  choosePanel: function (przycisk, panel) {
    if ($("#" + przycisk)) {
      $("#" + przycisk)
        .siblings()
        .removeClass("rma_on");
      $("#" + przycisk).addClass("rma_on");
    }
    if ($("#" + panel)) {
      $("#" + panel)
        .siblings()
        .hide();
      $("#" + panel).show();
    }
  },
  chooseRma: function (idek) {
    if ($("#rmal_" + idek)) {
      $("#rmal_" + idek).toggleClass("rma_itema");
      $("#rmal_" + idek)
        .children(".rma_list_item_operation")
        .toggleClass("ophidden");
      if (
        $("#rmal_" + idek)
          .next()
          .css("display") == "none"
      ) {
        $("#rmal_" + idek)
          .next()
          .slideDown(rmaHideSpeed);
      } else {
        $("#rmal_" + idek)
          .next()
          .slideUp(rmaHideSpeed);
      }
    }
  },
  cancelRma: function (url) {
    var canc = confirm(rma_cancel_alert);
    if (canc == true) {
      window.location = url;
    } else {
      return false;
    }
  },
};
app_shop.run(
  function () {
    rma_list.chooseRma(app_shop.vars.chooseRma);
  },
  "all",
  ".rma_list_data_outline"
);
app_shop.run(
  function rmaOpenValidate() {
    $("#rma_open__number_input, #rma_open__email_input").on(
      "input",
      function rmaOpenValidateInput() {
        clearTimeout(app_shop.formControl.timeHandle);
        const obj = $(this);
        app_shop.formControl.timeHandle = setTimeout(
          function rmaOpenValidateInputimeout() {
            app_shop.formControl.validate(obj);
          },
          500
        );
      }
    );
    $(".rma_open__button").on("click", function rmaOpenValidateButton() {
      return app_shop.formControl.checkForm($(this).parents(".rma_open__form"));
    });
  },
  "all",
  ".rma_open"
);
$(function () {
  $(
    ".rma_products_page a.choose_prod, .rma_products_page .allowReturn_2 a"
  ).click(function () {
    orderdetails_payments.ajaxLoadSite(1);
    orderdetails_payments.ajaxLoadSiteMessage("");
    var oEleme = $(this).closest("td").find("a.addQuantity");
    var unit_sellby = parseFloat(
      Basketedit.getValues(oEleme.parent().find("input[type=text]")).unit_sellby
    );
    if (oEleme.parent().find("input[type=text]").val() == 0) {
      var quantity_product = unit_sellby;
      oEleme.parent().find("input[type=text]").val(quantity_product).change();
    }
    $(this).closest("form").submit();
    return false;
  });
});
var txt_1_69260 = "Wybierz produkty do reklamacji";
var txt_1_69378 = "Wybierz formę zwrotu należności";
var validationTextErrors = [];
validationTextErrors["invalid_bank_acccount"] =
  "Wprowadzony numer konta bankowego jest nieprawidłowy.";
app_shop.run(
  function () {
    $(".return_form")
      .find("input, textarea")
      .on("input", function () {
        clearTimeout(app_shop.formControl.timeHandle);
        obj = $(this);
        app_shop.formControl.timeHandle = setTimeout(function () {
          app_shop.formControl.validate(obj);
        }, 500);
      });
    $(".step5 #return_go_next").on("click", function () {
      if (
        !$(".return_form.form-control.validate").parent().is(".has-success") &&
        $(".return_form.form-control.validate")
          .parents(".return_form")
          .is(".active")
      ) {
        app_shop.formControl.checkForm($(this).parents("form"));
        return false;
      } else {
        $("div.progress_bar_wrapper")
          .removeClass("pb_step5")
          .addClass("pb_step6");
      }
    });
  },
  "all",
  ".return_form"
);
handleTim = "";
$(".step5 div.return_form").live("click", function () {
  $(".step5 div.return_form").removeClass("active");
  $(this).addClass("active").find("input").prop("checked", true);
});
app_shop.run(
  function searchCategoryDescription() {
    if (app_shop.vars.view >= 2) {
      app_shop.fn.categoryDivider(".search_categoriesdescription_sub");
      $(document).on("click", "a.show_description", function () {
        $(this).parent().addClass("expanded");
        return false;
      });
    }
  },
  "all",
  ".search_categoriesdescription_sub"
);
app_shop.run(
  function moveAfterSearchList() {
    if (app_shop.vars.view == 1) {
      $("#content").append($(".search_categoriesdescription_sub"));
    }
  },
  "all",
  ".search_categoriesdescription_sub"
);
app_shop.vars.show_description = "Czytaj więcej";
app_shop.fn.categoryDivider = function categoryDivider(selector) {
  var description = selector || ".search_categoriesdescription_sub",
    children = $(description).children(),
    categorySize =
      app_shop.vars.categorySize !== undefined
        ? app_shop.vars.categorySize
        : 512;
  if (
    children.length > 1 &&
    !$(".search_categoriesdescription_next").length &&
    categorySize !== 0
  ) {
    $(description).after(
      '<div class="search_categoriesdescription_next cm"><a class="show_description">' +
        app_shop.vars.show_description +
        "</a></div>"
    );
    $.each(children, function (indexInArray, valueOfElement) {
      var amount_with_element_length =
        (categorySize - valueOfElement.innerText.length) * -1;
      if (
        categorySize - valueOfElement.innerText.length <= 0 &&
        amount_with_element_length >= categorySize
      ) {
        $(valueOfElement).appendTo(".search_categoriesdescription_next");
      }
      categorySize -= valueOfElement.innerText.length;
    });
  }
  $(description).removeClass("skeleton");
  return false;
};
app_shop.run(
  function () {
    app_shop.fn.dropdown(
      $(".s_paging__select"),
      "s_setting__",
      function ($elem) {
        app_shop.fn.clickDropdown($elem, true);
      }
    );
    $(".s_paging__item.--filters a").on("click", function (e) {
      $("html").addClass("filters_open");
      e.preventDefault();
      return false;
    });
  },
  "all",
  ".s_paging"
);
app_shop.run(
  function () {
    if ($("#menu_messages_warning").length && $("#filter_list").length) {
      $("#menu_messages_warning").appendTo("#filter_list");
    }
  },
  "all",
  "#menu_messages_warning"
);
function change_link_compare() {
  $(".compare__item").each(function () {
    var _this = $(this),
      link = _this.data("link"),
      remove_link = _this.data("remove_link");
    app_shop.vars.view === 1
      ? _this.attr("href", remove_link)
      : _this.attr("href", link);
  });
}
app_shop.run(
  function compare_product_item() {
    change_link_compare();
  },
  [1, 2, 3, 4],
  ".compare__item"
);
var compare_product_item_class =
  "compare__item btn --solid --icon-right icon-x";
var menu_compare_cache = function () {
  iaiGet.comparers(function (json) {
    var res = json.Comparers.response;
    var count = res.attributes.count;
    var products = res.product;
    var ids = [];
    var iconsmall = [];
    var link = [];
    var remove_link = [];
    var name = [];
    for (var key in products) {
      if (products.hasOwnProperty(key)) {
        var element = products[key];
        ids.push(element.attributes.id);
        iconsmall.push(element.iconsmall);
        link.push(element.attributes.link);
        remove_link.push(element.attributes.removelink);
        name.push(element.name);
      }
    }
    var wrapper = $("#menu_compare_product");
    wrapper.find(".compare__sub").html("");
    for (var index = 0; index < ids.length; index++) {
      var element = ids[index];
      wrapper
        .find(".compare__sub")
        .append(
          '<a class="' +
            compare_product_item_class +
            '" href="' +
            remove_link[index] +
            '" data-remove_link="' +
            remove_link[index] +
            '" data-link="' +
            link[index] +
            '"><img src="' +
            iconsmall[index] +
            '" alt="' +
            name[index] +
            '"></a>'
        );
    }
    if (count > 0) {
      wrapper.show();
    }
    var removeBtn = wrapper.find(".compare__button.--remove");
    removeBtn.attr(
      "href",
      removeBtn.attr("href").replace("###", ids.join(","))
    );
    if (count > 1) {
      wrapper.find(".compare__buttons").show();
    }
  });
};
app_shop.run(function () {
  if (typeof cache_html !== "undefined") menu_compare_cache();
}, "all");
app_shop.run(
  function () {
    $("#search .product__prices").setHeight($("#search"));
    $("#search .product__name").setHeight($("#search"));
  },
  [1, 2, 3, 4],
  "#search"
);
app_shop.run(function () {
  var item = $("div.paging_show_all");
  if (!$("#search-list tr.hide-size").size()) {
    item.find('a[href="#show_all_sizes"]').remove();
  }
  if (!$("#search-list div.list_traits").size()) {
    item.find('a[href="#show_all_specification"]').remove();
  }
  if (!item.find("a").size()) {
    item.remove();
  }
  item.find('a[href="#show_all_sizes"]').live("click", function () {
    $("a.show_all_sizes").not(".active-hover-txt").click();
    return false;
  });
  item.find('a[href="#show_all_specification"]').live("click", function () {
    $("a.btn_specification").not(".active-hover-txt").click();
    return false;
  });
}, "all");
$.fn.serializeObject = function () {
  var self = this,
    json = {},
    push_counters = {},
    patterns = {
      validate: /^[a-zA-Z][a-zA-Z0-9_]*(?:\[(?:\d*|[a-zA-Z0-9_]+)\])*$/,
      key: /[a-zA-Z0-9_]+|(?=\[\])/g,
      push: /^$/,
      fixed: /^\d+$/,
      named: /^[a-zA-Z0-9_]+$/,
    };
  this.build = function (base, key, value) {
    base[key] = value;
    return base;
  };
  this.push_counter = function (key) {
    if (push_counters[key] === undefined) {
      push_counters[key] = 0;
    }
    return push_counters[key]++;
  };
  $.each($(this).serializeArray(), function () {
    if (!patterns.validate.test(this.name)) {
      return;
    }
    var k,
      keys = this.name.match(patterns.key),
      merge = this.value,
      reverse_key = this.name;
    while ((k = keys.pop()) !== undefined) {
      reverse_key = reverse_key.replace(new RegExp("\\[" + k + "\\]$"), "");
      if (k.match(patterns.push)) {
        merge = self.build([], self.push_counter(reverse_key), merge);
      } else if (k.match(patterns.fixed)) {
        merge = self.build([], k, merge);
      } else if (k.match(patterns.named)) {
        merge = self.build({}, k, merge);
      }
    }
    json = $.extend(true, json, merge);
  });
  return json;
};
app_shop.vars.searchParams = $("form#filter_form").serializeObject();
app_shop.txt.txt_75696_1 = "Wystąpił błąd w trakcie dodawania produktu.";
app_shop.txt.txt_75696_2 =
  "Musisz zmienić ilość produktów aby zaktualizować koszyk.";
app_shop.txt.txt_75696_3 = " + ";
app_shop.txt.txt_75696_4 = " PKT";
app_shop.txt.txt_75696_5 = "Koszyk został zaktualizowany";
app_shop.txt.txt_75696_675 = "Zmień ilość, by dodać ten produkt do koszyka.";
app_shop.vars.blockAjaxAdd = true;
app_shop.fn.hoverText = function (element, dataName) {
  var _html = element.html().trim();
  if (element.data(dataName)) {
    element.html(element.data(dataName).trim());
    element.data(dataName, decodeURIComponent(_html));
  }
};
app_shop.fn.hoverText = function (element, dataName) {
  var _html = element.html().trim();
  if (element.data(dataName)) {
    element.html(element.data(dataName).trim());
    element.data(dataName, decodeURIComponent(_html));
  }
  element.toggleClass("active-hover-txt");
};
app_shop.fn.multiAdd = function (inputs, button) {
  if (
    app_shop.vars.blockAjaxAdd ||
    (button.is(".blockAjaxAdd") && !button.parents("tr").is(".changed"))
  ) {
    Alertek.show_alert(app_shop.txt.txt_75696_2);
    return false;
  }
  app_shop.fn.hoverText(button, "loadtxt");
  app_shop.vars.blockAjaxAdd = true;
  var $basket = $("#menu_basket");
  $basket.removeClass("active");
  $("#menu_basket_details").hide();
  var _data = inputs.serialize() + "&getAjax=true&mode=1";
  $.ajax({
    type: "POST",
    url: "/basketchange.php?type=multiproduct",
    data: _data,
    dataType: "json",
    success: function (json) {
      app_shop.fn.hoverText(button, "loadtxt");
      $("#menu_basket_wrapper").removeClass("empty_bsket");
      Alertek.show_alert(app_shop.txt.txt_75696_5);
      $("div.menu_basket strong small").remove();
      if (json.basket.profit_points) {
        $("div.menu_basket strong").append(
          "<small>" +
            app_shop.txt.txt_75696_3 +
            json.basket.profit_points +
            app_shop.txt.txt_75696_4 +
            "</small>"
        );
        $("div.menu_basket > a").addClass("points");
      } else {
        $("div.menu_basket > a").removeClass("points");
      }
      // !CUSTOM
      // $("div.menu_basket > a .badge").remove();
      // if (json.basket.productsCounter) {
      //   $("div.menu_basket > a").append(
      //     '<span class="badge badge-important visible-phone">' +
      //       json.basket.productsCounter +
      //       "</span>"
      //   );
      // }
      $(".img-counter-header .counter").remove();
      if (json.basket.productsCounter) {
        $(".img-counter-header ").append(
          `<span class="counter">${json.basket.productsCounter}</span>`
        );
      } else {
        $(".img-counter-header ").append(`<span class="counter">0</span>`);
      }
      $("div.menu_basket strong b").text(
        format_price(json.basket.worth_net, {
          mask: app_shop.vars.currency_format,
          currency: app_shop.vars.symbol,
          currency_space: app_shop.vars.currency_space,
          currency_before_price: app_shop.vars.currency_before_value,
        })
      );
      $("#menu_basket").load("/return.php?ajax=true #menu_basket > *");
    },
    error: function (xml, sTextStatus, oErrorThrown) {
      Alertek.show_alert(app_shop.txt.txt_75696_1);
      app_shop.fn.hoverText(button, "loadtxt");
      app_shop.vars.blockAjaxAdd = false;
    },
  });
};
app_shop.run(
  function () {
    $(".quantity input.n65081").live("change", function () {
      app_shop.vars.blockAjaxAdd = false;
      if ($(this).val() <= 0) {
        $(this).val(0);
        return false;
      }
      Basketedit.number_check($(this));
      $(this)
        .parents("table")
        .find(".blockAjaxAdd")
        .removeClass("blockAjaxAdd");
      $(this).parents("tr").addClass("changed");
    });
    $("span.n65081_down").live("click", function () {
      if (!$(this).is("[data-disabled]")) {
        var input = $(this).parent().find("input[type=text]");
        var unit_sellby = parseFloat(Basketedit.getValues(input).unit_sellby);
        var quantity_product = parseFloat(input.val()) - unit_sellby;
        input.val(quantity_product).change();
      }
    });
    $("span.n65081_up").live("click", function () {
      if (!$(this).is("[data-disabled]")) {
        var input = $(this).parent().find("input[type=text]");
        var unit_sellby = parseFloat(Basketedit.getValues(input).unit_sellby);
        var quantity_product = parseFloat(input.val()) + unit_sellby;
        input.val(quantity_product).change();
      }
    });
    $("a.btn_specification").live("click", function () {
      $that = $(this);
      app_shop.fn.hoverText($that, "toggletxt");
      var wrapper = $that.parents(".product-wrapper");
      wrapper.find("div.list_traits").toggle();
      wrapper.find("div.search-sizes").toggle();
      app_shop.fn.getSumBarPosition();
      return false;
    });
    $("a.show_all_sizes").live("click", function () {
      $that = $(this);
      app_shop.fn.hoverText($that, "toggletxt");
      $that.prev("table").find(".hide-size").toggle();
      app_shop.fn.getSumBarPosition();
      return false;
    });
  },
  "all",
  "#search-list"
);
$("#search-list button.search_buy").live("click", function () {
  var _e = $(this);
  $(_e.parents(".product-wrapper"))
    .find("tr")
    .each(function () {
      var $this = $(this);
      if ($this.find(".search_num").is(".product_virtual"))
        $this.find(".search_num").find("input.n65081").attr("value", "1");
      var _val = 0;
      $this.find(":input.n65081").each(function () {
        _val += $(this).val();
      });
    });
  if (_e.parents(".product-wrapper").find("tr").is(".changed")) {
    app_shop.vars.blockAjaxAdd = false;
    app_shop.fn.multiAdd(_e.parents(".product-wrapper").find(":input"), _e);
  } else {
    Alertek.show_alert(app_shop.txt.txt_75696_675);
    console.log("error");
  }
  return false;
});
$("#search-total button").live("click", function () {
  app_shop.fn.multiAdd(
    $(
      '#container.search_page #content form[action="/basketchange.php?type=multiproduct"] :input'
    ),
    $(this)
  );
  return false;
});
$("#quick_buy.product_total button").live("click", function () {
  app_shop.fn.multiAdd($(this).parents("tr").find(":input"), $(this));
  return false;
});
$("a.shipping_info").live("click", function () {
  if ($(this).attr("data-product-quantity")) {
    app_shop.fn.shipping_info(
      $(this).attr("data-product-id"),
      $(this).attr("data-product-size"),
      $(this).attr("data-product-quantity"),
      $(this).attr("href")
    );
    return false;
  } else {
    app_shop.fn.shipping_info(
      $(this).attr("data-product-id"),
      $(this).attr("data-product-size"),
      1,
      $(this).attr("href")
    );
    return false;
  }
});
app_shop.vars.scrollEnabled = true;
app_shop.fn.getSumBarPosition = function () {
  $("#search-total").css("position", "static");
  app_shop.vars.sumBarPosition = $("#search-total").offset().top;
};
app_shop.fn.sumBarFixed = function () {
  if (
    app_shop.vars.sumBarPosition <=
    $(window).scrollTop() + $(window).height()
  ) {
    $("#search-total").css("position", "static");
  } else {
    $("#search-total").css("position", "fixed");
  }
};
app_shop.run(
  function () {
    app_shop.fn.getSumBarPosition();
    app_shop.fn.sumBarFixed();
    $(window).load(function () {
      app_shop.fn.getSumBarPosition();
      app_shop.fn.sumBarFixed();
      $(window).on("scroll", function (event) {
        if (!app_shop.vars.scrollEnabled) {
          return;
        }
        app_shop.vars.scrollEnabled = false;
        return setTimeout(function () {
          app_shop.vars.scrollEnabled = true;
          app_shop.fn.sumBarFixed();
        }, 60);
      });
    });
  },
  "all",
  "#search-total"
);
app_shop.run(
  function () {
    $("#quick_buy input.quantity").live("change", function () {
      app_shop.vars.blockAjaxAdd = false;
      if ($(this).val() == 0) return false;
      Basketedit.number_check($(this));
    });
    $("#quick_buy .product_total button").live("click", function () {
      app_shop.fn.multiAdd($(".search_page form#quick_buy"), $(this));
      return false;
    });
  },
  "all",
  "#quick_buy"
);
$.fn.inView = function () {
  hh = $(window).scrollTop() + $(window).height();
  gg = $(this).position().top;
  if (hh + 100 > gg) {
    return true;
  } else {
    return false;
  }
};
var aktualnyLinkDoKategorii = "";
function ajaxSearching(urlAjax, obj) {
  $.ajax({
    url: urlAjax,
    timeout: 8000,
    complete: function (request, settings) {
      if (request.status != 200) {
        window.location = aktualnyLinkDoKategorii;
      }
    },
    error: function () {
      window.location = aktualnyLinkDoKategorii;
    },
    success: function (data, textStatus, jqXHR) {
      if (jqXHR.status == 200) {
        trOBJ = $(data).find("#search div.product_wrapper");
        trOBJ.addClass("new_load_items");
        nextLink = $(data).find("#search_paging_bottom a.next").prop("href");
        if (nextLink) {
          $("#search_paging_bottom a.next").prop("href", nextLink);
          $("#search_paging_bottom").removeClass("loadingInProgress");
        } else {
          $("#search_paging_bottom").hide();
        }
        $("#search").append(trOBJ);
        $(".new_load_items img.b-lazy").parents("a").addClass("loading");
        $(".new_load_items .align_row").iai_align();
        var bLazy = new Blazy({
          breakpoints: [{ width: 420, src: "data-src-small" }],
          success: function (element) {
            setTimeout(function () {
              $(element).parents(".loading").removeClass("loading");
            }, 200);
          },
        });
        $(".new_load_items").removeClass("new_load_items");
      }
    },
  });
}
$(window).scroll(function () {
  if (app_shop.vars.view == 1) {
    if ($("#search_paging_bottom a.next").size() && !$(".filter_on").size()) {
      if ($("#search_paging_bottom").inView()) {
        if (!$("#search_paging_bottom").is(".loadingInProgress")) {
          aktualnyLinkDoKategorii = $("#search_paging_bottom a.next").attr(
            "href"
          );
          ajaxSearching(
            aktualnyLinkDoKategorii,
            $("#search_paging_bottom a.next")
          );
          $("#search_paging_bottom").addClass("loadingInProgress").show();
        }
      }
    }
  }
});
app_shop.run(
  function () {
    $(window).resize(function () {
      $(".selectbox-title,.selectbox-container").removeAttr("style");
    });
  },
  "all",
  "#searching_form"
);
app_shop.fn.switchSigninView = function (element) {
  $("#signin-form_box_left .signin-form_box_sub").hide();
  $("#" + element.attr("value")).show();
};
app_shop.run(
  function () {
    $("a.password_reminder_signin, a.password_back_signin").on(
      "click",
      function () {
        app_shop.fn.switchSigninView($($(this).attr("href")));
        return false;
      }
    );
    $(".cookie_login_social_more_social").on("click", function () {
      $("#cookie_login_social_more").show();
      $(this).remove();
      return false;
    });
  },
  "all",
  "#signin-form"
);
app_shop.run(
  function () {
    $("a.show_on_map").click(function () {
      if ($(".no-touch")) {
        stock_map.showMap();
        return false;
      }
    });
  },
  "all",
  "#stock_info_58110"
);
app_shop.run(
  function () {
    $(".stocks_list_name").maxHeight();
    $(".stocks_list_adress").maxHeight();
    $(".stocks_list_phone").maxHeight();
    $(".stocks_list_mail").maxHeight();
  },
  1,
  ".stocks_list_wrapper",
  true
);
app_shop.run(
  function () {
    $(".stocks_list_name").maxHeight();
    $(".stocks_list_adress").maxHeight();
    $(".stocks_list_phone").maxHeight();
    $(".stocks_list_mail").maxHeight();
  },
  2,
  ".stocks_list_wrapper",
  true
);
app_shop.run(
  function () {
    $(".stocks_list_name").maxHeight();
    $(".stocks_list_adress").maxHeight();
    $(".stocks_list_phone").maxHeight();
    $(".stocks_list_mail").maxHeight();
  },
  3,
  ".stocks_list_wrapper",
  true
);
app_shop.run(
  function () {
    $(".stocks_list_name").maxHeight();
    $(".stocks_list_adress").maxHeight();
    $(".stocks_list_phone").maxHeight();
    $(".stocks_list_mail").maxHeight();
  },
  4,
  ".stocks_list_wrapper",
  true
);
var stocks_list_more_txt = "więcej informacji";
var stocks_list_on_map_txt = "Pokaż na mapie";
