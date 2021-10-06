import { makeStyles } from '@material-ui/core/styles';
import React from 'react';
import { Link } from 'react-router-dom';

const useStyles = makeStyles((theme?: any) => ({
  root: {
    flexGrow: 1,
    marginBottom: "20px",
  },
  test: {
    background: "blue",
  },
  tagSticky: {
    backgroundColor: "#FFFFFF",
    position: "sticky",
    top: 0,
    left: 0,
    zIndex: 1,
  },
  tagContainer: {
    padding: theme.spacing(1, 1, 0, 1),
    justifyContent: "space-between",
    display: "flex",
    flexWrap: "wrap",
    // margin: '24px 0',
  },
  tagContainerNoBeds: {
    flexWrap: "nowrap",
  },
  row: {
    padding: theme.spacing(1, 1),
    justifyContent: "space-between",
    display: "flex",
  },
  rowNoBeds: {
    justifyContent: "center",
  },
  tag: {
    display: "flex",
    justifyContent: "space-between",
    flexDirection: "column",
    textAlign: "center",
    backgroundColor: "#f3f3f3",
    borderRadius: 10,
    flexGrow: 1,
    margin: 3,
    color: "black",
    textDecoration: "none",
  },
  tagSelected: {
    color: "#FFFFFF",
    backgroundColor: "#00aeef",
  },
  tagTitle: {
    marginTop: 5,
  },
  tagSection: {
    display: "flex",
    flexDirection: "column",
    alignItems: "center",
    alignContent: "flex-end",
  },
  topTag: {
    fontSize: "0.5rem",
  },
  smallTag: {
    fontSize: "0.5rem",
  },
  mainTag: {
    fontSize: "1.0rem",
  },
  grow: {
    flexGrow: 1,
  },
  table: {
    width: "100%",
  },
  timestamp: {
    // fontWeight: "bold",
    padding: theme.spacing(0, 1),
    textAlign: "left",
  },
  sectionHeader: {
    "border-left": ".1rem solid #f50057",
    margin: 3,
    padding: 3,
  },
}));
type TagProps = {
  title: string;
  mainMetric: string;
  mainMini: string;
  footer: string;
  routeTo: string;
  selected: boolean;
};
const Tag = (props: TagProps) => {
  const { title, mainMetric, mainMini, footer, routeTo, selected } = props;

  const classes = useStyles();

  return (
    <Link
      className={`${classes.tag} ${selected ? classes.tagSelected : ""}`}
      to={routeTo}
    >
      <div className={classes.tagTitle}> {title} </div>
      <div className={`${classes.row}  ${classes.rowNoBeds}`}>
        <section className={classes.tagSection}>
          <div className={classes.topTag}>{mainMini}</div>
          <div className={classes.mainTag}>{mainMetric}</div>
          <div className={classes.smallTag}>{footer} </div>
        </section>
      </div>
    </Link>
  );
};
type USInfoTopWidgetProps = {
  tags: TagProps[];
};
export const USInfoTopWidget = ({ tags }: USInfoTopWidgetProps) => {
  const classes = useStyles();
  return (
    <div className={classes.tagSticky}>
      <div className={`${classes.tagContainer} ${classes.tagContainerNoBeds}`}>
        {tags.map((tag) => (
          <Tag
            key={tag.routeTo}
            title={tag.title}
            mainMetric={tag.mainMetric}
            mainMini={tag.mainMini}
            footer={tag.footer}
            selected={tag.selected}
            routeTo={tag.routeTo}
          />
        ))}
      </div>
    </div>
  );
};
