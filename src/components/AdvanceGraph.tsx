import PropTypes from "prop-types";
import { useState } from "react";

import React from "react";
import ToggleButton from "@material-ui/lab/ToggleButton";
import ToggleButtonGroup from "@material-ui/lab/ToggleButtonGroup";
import {
  LineChart,
  ReferenceLine,
  ReferenceArea,
  Label,
  CartesianGrid,
  Line,
  ResponsiveContainer,
  Tooltip,
  XAxis,
  YAxis,
} from "recharts";
import { fade, makeStyles } from "@material-ui/core/styles";
import { scaleSymlog } from "d3-scale";
// import { DateRangeSlider } from "./DateRangeSlider";
import { SectionHeader } from "./SectionHeader";
import Typography from "@material-ui/core/Typography";

import { DataSeries } from "./DataSeries";
import { strictEqual } from "assert";
var shortNumber = require("short-number");
const moment = require("moment");
// const logScale = scaleSymlog().domain([0, "dataMax"]);

const TimestampFormatter = (timestamp: number) =>
  moment.unix(timestamp).format("M/D");

interface GraphSeriesType {
  series: DataSeries;
  color?: string;
  rightAxis?: boolean;
  covidspecial?: boolean;
  showMovingAverage?: boolean;
}
/*

const Cookies = require("js-cookie");

const baseToggleButtonStyles = {
  height: "initial",
  textTransform: "initial",
};

export enum axisScales {
  linear = "Linear",
  log = "Log",
}

// This scale for logs works consistenly, whereas setting ReCharts to use the
// scale 'log' only works sometimes under certain mystery situations.


const cookieStaleWhen = (cookie) =>
  !cookie.verticalScale || !cookie.showPastDays;

  */

const useStyles = makeStyles((theme) => ({
  options: {
    display: "flex",
    flexWrap: "wrap",
    marginBottom: "16px",
    "& > *": {
      margin: "0 8px 8px 0",
    },
  },
  slider: {
    display: "flex",
    width: 200,
    alignItems: "center",
  },
  expand: {
    flexGrow: 1,
  },
}));

type GraphProps = {
  serieses: GraphSeriesType[];
  title: string;
  yAxisFormatter?: (v: number) => string; //  myShortNumber;
  subtitle?: string;
  className?: string;
  showControls?: boolean;
};

export const AdvancedGraph = (props: GraphProps) => {
  const {
    showControls = false,
    yAxisFormatter = (n: number) => myShortNumber(n),
    subtitle = "",
    className = "",
  } = props; // this is how default is set

  const classes = useStyles();

  console.log(showControls);

  // const [state, setStateSticky] = useStickyState({
  //   defaultValue: {
  //     verticalScale: axisScales.linear,
  //     showPastDays: 30,
  //   },
  //   cookieId: "AdvanceGraphPreference1",
  //   isCookieStale: cookieStaleWhen,
  // });
  // const handleLogScaleToggle = (newScale) => {
  //   setStateSticky({
  //     ...state,
  //     verticalScale: newScale,
  //   });
  // };

  // const handleSliderValueChange = (value) => {
  //   let newstate = { ...state, showPastDays: value };
  //   setStateSticky(newstate);
  // };

  // function filterData(data) {
  //   const cutoff = moment().subtract(state.showPastDays, "days").unix();
  //   const future = moment().add(14, "days").unix();
  //   return data.filter((p) => p.timestamp >= cutoff && p.timestamp <= future);
  // }

  // const scales = new Map([
  //   [
  //     "Linear",
  //     {
  //       label: "Linear",
  //       scale: "Linear",
  //     },
  //   ],
  //   [
  //     "Log",
  //     {
  //       label: "Log",
  //       scale: "Log",
  //     },
  //   ],
  // ]);
  // const scale = state.verticalScale;

  // Expands series that are supposed to have trend lines into an entry for the
  // original series and one for the trend line.
  const expandedSerieses = expandSeriesesToMap(props.serieses);

  // Okay, here's where it gets terrible. We have raw serieses and envelopes.
  // We want the user to be able to toggle serieses and evelopes on and off one
  // by one, but not to toggle the serieses inside of a envelope. So for the
  // purposes of Recharts we're going to decompose the envelopes to be raw
  // serieses. But for our code, we're going to merge them and be confused a
  // lot.

  const allSerieses = [...expandedSerieses.values()];

  let { data, timestampFormatter } = DataSeries.flatten(
    [...allSerieses.values()].map(({ series }) => series)
  );

  const seriesesAndEnvelopes = [...expandedSerieses.entries()];
  const allLabels = seriesesAndEnvelopes.map(([label]) => label);
  const [known, setKnown] = React.useState(allLabels);
  // const [selected, setSelected] = React.useState(() =>
  //   seriesesAndEnvelopes
  //     .filter((item) => item[1].initial !== "off")
  //     .map(([label]) => label)
  // );

  // As the user switches pages, graphs that were previously unknown may become
  // available. So turn them off if they default to on when they appear.
  // if (known.join() !== allLabels.join()) {
  //   const add = [];
  //   for (const [key, { initial }] of seriesesAndEnvelopes) {
  //     if (
  //       !known.includes(key) &&
  //       !selected.includes(key) &&
  //       initial !== "off"
  //     ) {
  //       add.push(key);
  //     }
  //   }

  //   if (add.length > 0) {
  //     // We might as well just do this in here, even though technically we
  //     // should probably do it in the else branch too.
  //     setKnown(allLabels);
  //     setSelected(selected.concat(add));
  //   }
  // }

  return (
    <div className={className}>
      {props.title && (
        <SectionHeader>
          <Typography variant="h5" noWrap>
            {props.title}
            <Typography variant="body1" noWrap>
              {subtitle}
            </Typography>
          </Typography>
        </SectionHeader>
      )}
      {/* {props.showControls && (
        <div className={classes.options}>
          <Display
            displays={scales}
            selected={scale}
            onChange={handleLogScaleToggle}
          />
          <div className={classes.slider}>
            <div>Date:</div>
            <DateRangeSlider
              currentDate={moment()}
              startDate={moment("02/01/2020", "MM/DD/YYYY")}
              valueChanged={handleSliderValueChange}
              defaultValue={state.showPastDays}
            />
          </div>
          <div className={classes.expand} />
          <Legend
            spec={seriesesAndEnvelopes}
            selected={selected}
            onChange={setSelected}
          />
        </div>
      )} */}
      <Chart
        // data={filterData(data)}
        data={data}
        // scale={scales.get(scale).scale}
        timestampFormatter={timestampFormatter}
        yAxisFormatter={yAxisFormatter}
        specs={seriesesAndEnvelopes
          // .filter(([label]) => selected.includes(label))
          .map(
            ([label, s]) =>
              ({
                label: label,
                color: s.color,
                rightAxis: s.rightAxis,
                derived: false, // maybe
                stipple: false, // maybe
              } as LineSpec)
          )}
        // vRefLines={props.vRefLines}
        // hRefLines={props.hRefLines}
      />
    </div>
  );
};

function expandSeriesesToMap(serieses: GraphSeriesType[]) {
  const expanded = serieses.flatMap((s) => {
    const result = [] as GraphSeriesType[];
    if (s.covidspecial) {
      let s_for_display;
      if (s.showMovingAverage) {
        s_for_display = s.series.nDayAverage(7);
      } else {
        s_for_display = s.series;
      }

      let main = {
        ...s,
        series: s_for_display.dropLastPoint(),
        stipple: false,
      };
      let last = {
        ...s,
        series: s_for_display.last2PointSeries().suffixLabel("*"),
        stipple: true,
        derived: true,
      };
      result.push(main);
      result.push(last);

      if (s.showMovingAverage) {
        let original = {
          ...s,
          series: s.series,
          // derived: true,
          stipple: true,
        };
        result.push(original);
      }
    } else {
      result.push(s);
    }
    return result;
  });

  return new Map(
    expanded.map((seriesInfo) => {
      let series = seriesInfo.series;
      let label = "empty";
      if (series) {
        label = series.label();
      }
      return [label, seriesInfo];
    })
  );
}
/*

const useDisplayStyles = makeStyles((theme) => ({
  options: {
    display: "initial",
  },
  option: {
    ...baseToggleButtonStyles,
  },
}));

const Display = (props) => {
  const classes = useDisplayStyles();

  return (
    <ToggleButtonGroup
      exclusive
      value={props.selected}
      onChange={(event, desired) => desired && props.onChange(desired)}
      className={classes.options}
    >
      {[...props.displays.entries()].map(([key, data]) => (
        <ToggleButton key={key} value={key} className={classes.option}>
          {data.label}
        </ToggleButton>
      ))}
    </ToggleButtonGroup>
  );
};

const useLegendStyles = makeStyles((theme) => ({
  serieses: {
    border: `1px solid ${fade(theme.palette.action.active, 0.12)}`,
    display: "flex",
    flexWrap: "wrap",
    maxWidth: "500px",
  },
  series: {
    border: "none",
    color: fade(theme.palette.action.active, 0.12),
    "&.selected": {
      backgroundColor: "initial",
      color: fade(theme.palette.action.active, 0.8),
      fontWeight: "initial",
    },
    ...baseToggleButtonStyles,
  },
  icon: {
    paddingRight: "4px",
  },
}));

const Legend = (props) => {
  const classes = useLegendStyles();

  return (
    <ToggleButtonGroup
      value={props.selected}
      onChange={(event, desired) => props.onChange(desired)}
      className={classes.serieses}
    >
      {props.spec
        .filter(([label, { derived }]) => !derived)
        .map(([label, { color, stipple }]) => (
          <ToggleButton
            key={label}
            value={label}
            classes={{ root: classes.series, selected: "selected" }}
          >
            <span
              className={classes.icon}
              style={props.selected.includes(label) ? { color } : {}}
            >
              {stipple ? "···" : "—"}
            </span>
            {label}
          </ToggleButton>
        ))}
    </ToggleButtonGroup>
  );
};
*/

interface RefLineType {
  date: number; // unix timestamp
  label: string;
  value: number;
}

interface LineSpec {
  derived: boolean;
  label: string;
  color: string;
  stipple: boolean;
  rightAxis: boolean;
}

type ChartProps = {
  vRefLines?: RefLineType[];
  hRefLines?: RefLineType[];
  data: object[];
  specs: LineSpec[];

  timestampFormatter: (timestamp: number) => string;
  yAxisFormatter: (v: number) => string; //  myShortNumber;
};

const Chart = (props: ChartProps) => {
  const ordered = (props.specs || []).sort((a, b) => {
    if (a.derived && !b.derived) {
      return -1;
    } else if (!a.derived && b.derived) {
      return 1;
    } else {
      return a.label < b.label ? -1 : 1;
    }
  });

  let YAxis0Color = "black";
  let YAxis1Color = undefined;
  for (const s of ordered) {
    if (s.rightAxis) {
      YAxis1Color = s.color;
    } else {
      YAxis0Color = s.color;
    }
  }

  function getvRefLines(lines: RefLineType[]) {
    let result = (lines || []).map((l, idx: number) => {
      return (
        <ReferenceLine
          key={`vrefline${idx}`}
          x={l.date}
          stroke="#e3e3e3"
          strokeWidth={1}
        >
          <Label value={l.label} position={"insideTop"} fill="#b3b3b3" />
        </ReferenceLine>
      );
    });
    return result;
  }

  function getvRefAreas(lines: RefLineType[]) {
    let result = (lines || []).map((l, idx) => {
      const startdate = l.date;
      const today = moment().unix();
      let enddate = startdate + 14 * 24 * 60 * 60;
      while (enddate > today) {
        enddate -= 24 * 60 * 60;
      }
      return (
        <ReferenceArea
          key={`vrefarea${idx}`}
          x1={startdate}
          x2={enddate}
          // stroke="red"
          // strokeOpacity={0.3}
          fillOpacity={0.15}
        />
      );
    });
    return result;
  }

  function gethRefLines(lines: RefLineType[]) {
    let result = (lines || []).map((l, idx) => {
      return (
        <ReferenceLine
          key={`hrefline${idx}`}
          y={l.value}
          stroke="#e3e3e3"
          strokeWidth={1}
        >
          <Label value={l.label} position={"insideLeft"}></Label>
        </ReferenceLine>
      );
    });
    return result;
  }

  return (
    <ResponsiveContainer height={300}>
      <LineChart data={props.data} margin={{ left: -4, right: 8 }}>
        {/* {props.vRefLines && getvRefLines(props.vRefLines)}
        {props.hRefLines && getvRefLines(props.hRefLines)}
        {props.vRefLines && getvRefAreas(props.vRefLines)} */}
        <Tooltip
          formatter={valueFormatter}
          labelFormatter={props.timestampFormatter}
        />
        <XAxis dataKey="timestamp" tickFormatter={props.timestampFormatter} />
        <YAxis
          yAxisId={0}
          tick={{ fill: YAxis0Color }}
          //   scale={props.scale === "Log" ? logScale : props.scale}
          //   scale={props.scale === "Log" ? logScale : props.scale}
          width={50}
          tickFormatter={props.yAxisFormatter}
        />
        {YAxis1Color && (
          <YAxis
            yAxisId={1}
            tickFormatter={props.yAxisFormatter}
            width={35}
            tick={{ fill: YAxis1Color }}
            orientation="right"
          />
        )}
        <CartesianGrid stroke="#d5d5d5" strokeDasharray="5 5" />

        {ordered.flatMap((spec) => specToElements(spec))}
      </LineChart>
    </ResponsiveContainer>
  );
};
function valueFormatter(value: any) {
  if (isNaN(value)) {
    return "unknown";
  } else {
    if (value < 1) {
      return (value * 100).toFixed(1) + "%";
    }
    return value.toFixed(1).replace(/\.?0+$/, "");
  }
}

function specToElements(spec: LineSpec) {
  return [lineForSpec(spec)];
}

function lineForSpec(spec: LineSpec) {
  return (
    <Line
      key={spec.label}
      baseLine={10000}
      type="monotone"
      dataKey={spec.label}
      isAnimationActive={false}
      fill={spec.color}
      stroke={spec.color}
      strokeDasharray={spec.stipple ? "1 2" : undefined}
      dot={false}
      strokeWidth={2}
      yAxisId={spec.rightAxis ? 1 : 0}
    />
  );
}

function myShortNumber(n: any) {
  if (!n) {
    return "0";
  }
  if (isNaN(n)) {
    n = n.replace(/,/g, "");
    n = Number(n);
  } else if (!isFinite(n)) {
    return "∞";
  }
  return shortNumber(n);
}

/*

function useStickyState({
  defaultValue,
  cookieId,
  isCookieStale = (c) => false,
  expiration = null,
}) {
  let readCookie = Cookies.getJSON(cookieId);
  if (!readCookie || isCookieStale(readCookie)) {
    readCookie = defaultValue;
  }

  const [state, setState] = useState(readCookie);

  const setStateSticky = (newState) => {
    Cookies.set(cookieId, newState, {
      expires: expiration,
    });
    setState(newState);
  };

  return [state, setStateSticky];
}

*/
