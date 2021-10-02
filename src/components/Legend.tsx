import ToggleButton from "@material-ui/lab/ToggleButton";
import ToggleButtonGroup from "@material-ui/lab/ToggleButtonGroup";
import { fade, makeStyles } from "@material-ui/core/styles";
import { GraphSeriesType } from "./AdvanceGraph";

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
    height: "initial",
    textTransform: "initial",
  },
  icon: {
    paddingRight: "4px",
  },
}));
type LegendProps = {
  spec: [string, GraphSeriesType][];
  selected: string[];
  onChange: (desired: any) => void;
};
export const Legend = (props: LegendProps) => {
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
