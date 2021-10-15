import { AdvancedGraph } from './AdvanceGraph';
import { RefLineType } from './Chart';
import { DataSeries } from './DataSeries';

export interface GraphSeriesType {
  series: DataSeries;
  derived?: boolean;
  color?: string;
  rightAxis?: boolean;
  covidspecial?: boolean;
  showMovingAverage?: boolean;
  stipple?: boolean;
  initial?: string;
}

type AdvancedGraphProps = {
  serieses: GraphSeriesType[];
  title: string;
  yAxisFormatter?: (v: number) => string; //  myShortNumber;
  subtitle?: string;
  className?: string;
  showControls?: boolean;
  vRefLines?: RefLineType[];
  hRefLines?: RefLineType[];
  initNumberOfDays?: number;
};

export const AdvancedCovidGraph = (props: AdvancedGraphProps) => {
  return <AdvancedGraph {...props} />;
};
